extends Area2D
@onready var lis: Area2D = $"."

func _process(delta: float) -> void:
	if GameState.mid_einstein:
		if lis.position.x >= 1354:
			return
		else:
			lis.position.x += 150 * delta
			lis.visible = true
