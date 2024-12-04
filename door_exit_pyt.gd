extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "main_character" and GameState.gpu_collected:
		get_tree().change_scene_to_file("res://hall_2.tscn")
