extends Area2D
@onready var gpu: Area2D = $"."
@onready var label: Label = $"../Label"


func _on_body_entered(body: Node2D) -> void:
	if body.name == "main_character":
		gpu.visible = false
		label.visible = false
		queue_free()
		GameState.gpu_collected = true
	else:
		pass
