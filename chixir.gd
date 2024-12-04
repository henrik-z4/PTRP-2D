extends Area2D
@onready var chixir_spr: Sprite2D = $chixir_spr
@onready var dialogue_text: Label = $"../dialogue/dialogue_text"
@onready var dialogue: Node2D = $"../dialogue"
@onready var main_character: CharacterBody2D = $"../main_character"
@onready var key: Area2D = $"../key"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.name == "main_character" and not GameState.chixir_dialogue_finished:
		main_character.stop_movement()
		dialogue.visible = true
		dialogue_text.text = "Гевик: Нет времени объяснять, мне срочно нужен ключ для пыточной"
		await get_tree().create_timer(3.0).timeout
		dialogue_text.text = "Солнце: Приветствую. Что случилось?"
		await get_tree().create_timer(3.0).timeout
		dialogue_text.text = "Гевик: Мне нужны старые детали от компьютеров."
		await get_tree().create_timer(3.0).timeout
		dialogue_text.text = "Солнце: А ты разве не знаешь обо всех опасностях пыточной?"
		await get_tree().create_timer(3.0).timeout
		dialogue_text.text = "Гевик: Я знаю, но мне нужно это сделать."
		await get_tree().create_timer(2.0).timeout
		dialogue_text.text = "Гевик: Я готов пройти через все испытания пыточной."
		await get_tree().create_timer(3.0).timeout
		dialogue_text.text = "Солнце: Хорошо, я помогу тебе."
		await get_tree().create_timer(2.0).timeout
		dialogue_text.text = "Солнце: Возьми ключ от пыточной. Будь осторожен."
		await get_tree().create_timer(3.0).timeout
		dialogue_text.text = "Гевик: Спасибо большое. С богом."
		await get_tree().create_timer(2.0).timeout
		
		dialogue.visible = false
		key.visible = true
		GameState.chixir_dialogue_finished = true
		main_character.start_movement()
	else:
		pass
