extends Node

func _on_start_game_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://game.tscn")
