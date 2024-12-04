extends Area2D

@onready var canvas_layer: CanvasLayer = $"../CanvasLayer"
@onready var label: Label = $"../CanvasLayer/Label"
@onready var main_character: CharacterBody2D = %main_character



func _on_body_entered(body: Node2D) -> void:
	if body.name == "main_character":
		main_character.stop_movement()
		canvas_layer.offset = Vector2(230,0)
		label.text = "Гевик: Снова здравствуйте! Флешка у меня!"
		canvas_layer.visible = true
		await get_tree().create_timer(2.0).timeout
		label.text = "Ангел: Ура! Давайте, показывайте ваш шедевр"
		await get_tree().create_timer(3.0).timeout
		label.text = "Гевик: * подключает флешку"
		await get_tree().create_timer(2.0).timeout
		label.text = "Гевик: Харламов, наконец-то мы показываем игру!!"
		await get_tree().create_timer(3.0).timeout
		label.text = "Харламов: Урааа!"
		await get_tree().create_timer(2.0).timeout
		label.text = "Харламов: И теперь у нас будет..."
		await get_tree().create_timer(2.0).timeout
		label.add_theme_font_size_override("font_size", 30)
		label.text = "АААААААААВТОМААААААААТ"
		await get_tree().create_timer(4.0).timeout
		label.text = "Игра запускается..."
		await get_tree().create_timer(3.0).timeout
		

		GameState.dialogue_shown = false
		GameState.dialogue_finished = false
		GameState.player_position = Vector2(0, 0)
		GameState.chixir_dialogue_finished = false
		GameState.has_key = false
		GameState.gpu_collected = false
		GameState.second_angel_dialogue_finished = false
		GameState.second_harlamov = false
		GameState.einstein = false
		GameState.mid_einstein = false
		GameState.flash_acquired = false

		get_tree().change_scene_to_file("res://game.tscn")
