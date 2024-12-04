extends Area2D
@onready var stairs_inst_2: CanvasLayer = $"../stairs_inst_2"
var ready_to_go: bool = false

func _process(delta: float) -> void:
	if ready_to_go:
		if Input.is_action_pressed("action"):
			get_tree().change_scene_to_file("res://einstein_mansion.tscn")

func _on_body_entered(body: Node2D) -> void:
	if body.name == "main_character" and GameState.second_angel_dialogue_finished:
		stairs_inst_2.visible = true
		ready_to_go = true


func _on_body_exited(body: Node2D) -> void:
	if body.name == "main_character" and GameState.second_angel_dialogue_finished:
		stairs_inst_2.visible = false
		ready_to_go = false
