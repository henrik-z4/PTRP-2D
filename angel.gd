extends Area2D
@onready var main_character: CharacterBody2D = %main_character
@onready var canvas_layer: CanvasLayer = $"../CanvasLayer"
@onready var label: Label = $"../CanvasLayer/Label"
@onready var target_label: Label = $"../Target_label/Label"
@onready var hint_1: Label = $"../hint_1"
@onready var door: Area2D = $"../Door"

var dialogue_shown: bool = false

func _on_body_entered(body: Node2D) -> void:
	if dialogue_shown:
		return
	if (body.name == "main_character"):
		dialogue_shown = true
		$Sprite2D.flip_h = true
		main_character.stop_movement()
		canvas_layer.offset = Vector2(230,0)
		label.text = "Гевик: Доброго Вам здравия, Ангел. Мы готовы показать Вам игру..."
		canvas_layer.visible = true
		await get_tree().create_timer(2.0).timeout
		label.text = "*не может найти флешку*"
		await get_tree().create_timer(3.0).timeout
		label.text = "Гевик: Кажется... есть небольшая проблема"
		await get_tree().create_timer(2.0).timeout
		label.text = "Ангел: У меня тоже есть проблема... Кажется, ангельский компьютер сломался"
		await get_tree().create_timer(3.0).timeout
		label.text = "Гевик: Сломался?"
		await get_tree().create_timer(1.0).timeout
		label.text = "Ангел: Да, сломался. Времени совсем мало..."
		await get_tree().create_timer(2.0).timeout
		label.text = "Гевик: Не волнуйтесь, Ангел. Я помогу Вам"
		await get_tree().create_timer(2.0).timeout
		label.text = "Ангел: У Солнца есть ключ от пыточной. Там остались старые детали от компьютеров"
		await get_tree().create_timer(3.0).timeout
		label.text = "Ангел: Сходи к Солнцу и забери ключ, а затем и детали. Ты очень выручишь!"
		await get_tree().create_timer(3.0).timeout
		label.text = "Гевик: Нет проблем. Я сделаю это"
		await get_tree().create_timer(3.0).timeout
		
		canvas_layer.visible = false
		$Sprite2D.flip_h = false
		main_character.start_movement()
		target_label.text = "Посетите Солнце. Её кабинет должен быть неподалеку"
		
		hint_1.visible = true
		await get_tree().create_timer(6.0).timeout
		hint_1.visible = false
		door.dialogue_finished = true
