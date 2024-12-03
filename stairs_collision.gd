extends Area2D
@onready var usage_label: CanvasLayer = $"../usage_label"
var ready_ldr: bool = false

func _process(delta: float) -> void:
	if ready_ldr:
		if Input.is_action_pressed("action"):
			get_tree().change_scene_to_file("res://floor2.tscn")

func _on_body_entered(body: Node2D) -> void:
	if body.name == "main_character" and GameState.has_key:
		usage_label.visible = true
		ready_ldr = true

func _on_body_exited(body: Node2D) -> void:
	if body.name == "main_character" and GameState.has_key:
		usage_label.visible = false
		ready_ldr = false
