extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if GameState.second_angel_dialogue_finished:
		get_tree().change_scene_to_file("res://hall_2.tscn")
