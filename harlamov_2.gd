extends Area2D
@onready var canvas_layer: CanvasLayer = $"../CanvasLayer"
@onready var main_character: CharacterBody2D = %main_character

func _on_body_entered(body: Node2D) -> void:
	if GameState.second_harlamov:
		return
	if body.name == "main_character":
		main_character.stop_movement()
		canvas_layer.visible = true
		await get_tree().create_timer(2.0).timeout
		canvas_layer.visible = false
		main_character.start_movement()
		GameState.second_harlamov = true
