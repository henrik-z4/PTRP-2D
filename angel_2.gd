extends Area2D

@onready var canvas_layer: CanvasLayer = $"../CanvasLayer"
@onready var label: Label = $"../CanvasLayer/Label"
@onready var main_character: CharacterBody2D = %main_character



func _on_body_entered(body: Node2D) -> void:
	if GameState.second_angel_dialogue_finished:
		return
	if body.name == "main_character":
		main_character.stop_movement()
		canvas_layer.offset = Vector2(230,0)
		label.text = "Гевик: Снова здравствуйте! Я принес видеокарту!"
		canvas_layer.visible = true
		await get_tree().create_timer(2.0).timeout
		label.text = "Ангел: Отлично! Теперь я смогу продолжить свою работу!"
		await get_tree().create_timer(3.0).timeout
		label.text = "Ангел: Я готова посмотреть вашу игру"
		await get_tree().create_timer(3.0).timeout
		label.text = "Гевик: На счет игры, есть небольшая проблемка..."
		await get_tree().create_timer(3.0).timeout
		label.text = "Гевик: Флешка со всеми данными утеряна"
		await get_tree().create_timer(2.0).timeout
		label.text = "Ангел: Как утеряна? Совсем?"
		await get_tree().create_timer(2.0).timeout
		label.text = "Гевик: Хотя... Кажется, в последний раз я оставлял её у Эйнштейна"
		await get_tree().create_timer(3.0).timeout
		label.text = "Ангел: Ладно... за то, что ты мне помог, я дам тебе время"
		await get_tree().create_timer(3.0).timeout
		label.text = "Ангел: Бегом, найди флешку и вернись!"
		await get_tree().create_timer(2.0).timeout
		label.text = "Гевик: Спасибо! Будет сделано!"
		canvas_layer.visible = false
		GameState.second_angel_dialogue_finished = true
		main_character.start_movement()
