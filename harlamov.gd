extends Area2D
@onready var main_character: CharacterBody2D = %main_character
@onready var canvas_layer: CanvasLayer = $"../CanvasLayer"
@onready var label: Label = $"../CanvasLayer/Label"

var dialogue_shown: bool = false

func _on_body_entered(body: Node2D) -> void:
	if dialogue_shown:
		return
	if (body.name == "main_character"):
		dialogue_shown = true
		$AnimatedSprite2D.flip_h = true
		main_character.stop_movement()
		canvas_layer.visible = true
		await get_tree().create_timer(2.0).timeout
		label.text = "Харламов: Я просто переживаю.. мы так долго работали над этой игрой.."
		await get_tree().create_timer(3.0).timeout
		label.text = "Харламов: ...надеюсь всё будет нормально"
		await get_tree().create_timer(3.0).timeout
		label.text = "Гевик: Конечно будет, Харламов! Чего ты переживашь?"
		await get_tree().create_timer(2.0).timeout
		label.text = "Гевик: Веди себя как обычно, придумай какую-нибудь оригинальную шутку"
		await get_tree().create_timer(3.0).timeout
		label.text = "Харламов: Большой театр..."
		await get_tree().create_timer(2.0).timeout
		canvas_layer.visible = false
		$AnimatedSprite2D.flip_h = false
		main_character.start_movement()
