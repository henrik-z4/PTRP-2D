extends CanvasLayer
@onready var label: Label = $Label

func _process(delta: float) -> void:
	if GameState.dialogue_finished:
		label.text = "Посетите Солнце. Её кабинет должен быть неподалеку"
	else:
		label.text = "Поговорите с Харламовым и Ангелом"
