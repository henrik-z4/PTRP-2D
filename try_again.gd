extends Button

func _on_pressed() -> void:
	#GameState.dialogue_shown = false
	#GameState.dialogue_finished = false
	#GameState.player_position = Vector2(0, 0)
	#GameState.chixir_dialogue_finished = false
	#GameState.has_key = false
	
	# раскомментирую комментарии если я злой (сохранений не будет)
	get_tree().change_scene_to_file("res://floor2.tscn")
