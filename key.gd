extends Area2D
@onready var key_sprite: Sprite2D = $key_sprite
@onready var success_label: Label = $"../success_label"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.name == "main_character" and GameState.chixir_dialogue_finished:
		key_sprite.visible = false
		GameState.has_key = true
		success_label.visible = true
		await get_tree().create_timer(2.0).timeout
		success_label.visible = false
		queue_free()
