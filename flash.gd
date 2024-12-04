extends Area2D
@onready var flash: Area2D = $"."

func _on_body_entered(body: Node2D) -> void:
	if body.name == "main_character":
		flash.visible = false
		GameState.flash_acquired = true
		queue_free()
