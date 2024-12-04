extends CanvasLayer
@onready var label: Label = $Label

func _process(delta: float) -> void:
	if GameState.dialogue_finished and not GameState.chixir_dialogue_finished and not GameState.gpu_collected and not GameState.second_angel_dialogue_finished and not GameState.einstein:
		label.text = "Посетите Солнце. Её кабинет должен быть неподалеку"
	elif GameState.chixir_dialogue_finished and not GameState.gpu_collected and not GameState.second_angel_dialogue_finished and not GameState.einstein:
		label.text = "Подберите ключ и начните мини-игру в пыточной"
	elif GameState.gpu_collected and not GameState.second_angel_dialogue_finished and not GameState.einstein:
		label.text = "Вернитесь к Ангелу"
	elif GameState.second_angel_dialogue_finished and not GameState.einstein:
		label.text = "Посетите кабинет Эйнштейна"
	elif GameState.einstein:
		label.text = "Украдите флешку, вернитесь к Ангелу и завершите игру"
	else:
		label.text = "Поговорите с Харламовым и Ангелом"
