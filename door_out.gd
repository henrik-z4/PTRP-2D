extends Area2D

@export var target_position: Vector2 = Vector2.ZERO

func _on_body_entered(body: Node2D) -> void:
	if body.name == "main_character" and GameState.dialogue_finished:
		GameState.player_position = target_position
		get_tree().change_scene_to_file("res://game.tscn")
