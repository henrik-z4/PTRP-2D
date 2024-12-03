extends CanvasLayer
@onready var label: Label = $Label

func _process(delta: float) -> void:
	if GameState.dialogue_finished and not GameState.chixir_dialogue_finished:
		label.text = "Посетите Солнце. Её кабинет должен быть неподалеку"
	elif GameState.chixir_dialogue_finished:
		label.text = "Подберите ключ и начните мини-игру в пыточной"
	else:
		label.text = "Поговорите с Харламовым и Ангелом"
