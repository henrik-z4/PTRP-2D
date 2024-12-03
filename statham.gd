extends Area2D
@onready var statham: Area2D = $"."
@onready var statham_col: CollisionShape2D = $statham_col
var speed: float = 300

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var acceleration: float = 35
	speed += acceleration * delta
	statham.position.x += speed * delta
	

func _on_body_entered(body: Node2D) -> void:
	queue_free()
	get_tree().change_scene_to_file("res://death.tscn")
