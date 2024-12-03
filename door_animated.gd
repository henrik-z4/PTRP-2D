extends Area2D
@onready var door_animation: AnimatedSprite2D = $door_animation

func _on_body_entered(body: Node2D) -> void:
	if body.name == "main_character":
		door_animation.frame = 1

func _on_body_exited(body: Node2D) -> void:
	if body.name == "main_character":
		door_animation.frame = 0
