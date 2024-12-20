extends CharacterBody2D
@onready var main_character: AnimatedSprite2D = $main_character
@onready var target_label: CanvasLayer = $"../Target_label"

const SPEED = 400.0
const JUMP_VELOCITY = -800.0
var ignore_inputs: bool = false

func _process(delta: float) -> void:
	if Input.is_action_pressed("target"):
		target_label.visible = true
	else:
		target_label.visible = false

func _physics_process(delta: float) -> void:
	if ignore_inputs:
		return
	
	if (abs(velocity.x) > 0):
		main_character.play("running")
	else:
		main_character.play("default")
	if not is_on_floor():
		velocity += get_gravity() * delta

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
		main_character.flip_h = direction < 0
	else:
		velocity.x = move_toward(velocity.x, 0, 12)

	move_and_slide()

func stop_movement() -> void:
	velocity = Vector2.ZERO
	main_character.play("default")
	ignore_inputs = true

func start_movement() -> void:
	ignore_inputs = false

func _ready() -> void:
	if GameState.player_position != Vector2.ZERO:
		global_position = GameState.player_position
		GameState.player_position = Vector2.ZERO
