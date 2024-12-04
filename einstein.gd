extends Area2D
@onready var dialogue: Area2D = $"../dialogue"
@onready var label: Label = $"../dialogue/Label"
@onready var main_character: CharacterBody2D = %main_character
@onready var einstein: Area2D = $"."
@onready var kireev: Area2D = $"../kireev"
@onready var lis: Area2D = $"../lis"
@onready var flash: Area2D = $"../flash"


func _process(delta: float) -> void:
	if GameState.einstein:
		einstein.scale.x += .5
		kireev.scale.x += .5
		lis.scale.x += .5

func _on_body_entered(body: Node2D) -> void:
	if GameState.einstein:
		return
	if body.name == "main_character":
		main_character.stop_movement()
		dialogue.visible = true
		await get_tree().create_timer(4.0).timeout
		label.text = "Эйнштейн: Здравствуй! В шашки играем"
		await get_tree().create_timer(2.0).timeout
		label.text = "Генерал: Привет. А чего интересуешься?"
		await get_tree().create_timer(3.0).timeout
		label.text = "Гевик: Просто я флешку потерял, в последний раз оставлял её у вас..."
		await get_tree().create_timer(3.0).timeout
		label.text = "Эйнштейн: О как, флешку... сейчас посмотрю"
		await get_tree().create_timer(3.0).timeout
		label.text = "* роется в вещах"
		await get_tree().create_timer(2.0).timeout
		label.text = "Эйнштейн: Не вижу никакой флешки"
		await get_tree().create_timer(2.0).timeout
		label.text = "Генерал: А всё потому, что флешка у меня!"
		await get_tree().create_timer(3.0).timeout
		label.text = "Гевик: Ооо, это же отлично. Отдайте её пожалуйста!"
		await get_tree().create_timer(3.0).timeout
		label.text = "Генерал: не всё так быстро..-"
		await get_tree().create_timer(1.5).timeout
		GameState.mid_einstein = true
		label.text = "Лис: Эй, чего это вы тут делаете?"
		await get_tree().create_timer(3.5).timeout
		label.text = "Гевик: Ой, здравствуйте"
		await get_tree().create_timer(2).timeout
		label.text = "Генерал: Доброго дня, Лис"
		await get_tree().create_timer(2).timeout
		label.text = "Разработчики: Мы переутомились и не добавили сюда логику мини-игры"
		await get_tree().create_timer(3).timeout
		label.text = "Генерал: Что?? Что это был за голос? Какие разработчики??"
		await get_tree().create_timer(3).timeout
		label.text = "Эйнштейн: Физика не в силах такое объяснить"
		await get_tree().create_timer(3).timeout
		label.text = "Лис: Жертвы гаджетов однозначно. Я вот ничего не слышал"
		await get_tree().create_timer(3).timeout
		label.text = "Разработчики: У тебя есть 15 секунд, чтобы украть флешку и сбежать"
		await get_tree().create_timer(3).timeout
		label.text = "Все: ЧТО?????"
		await get_tree().create_timer(2).timeout
		
		dialogue.visible = false
		flash.visible = true
		GameState.einstein = true
		main_character.start_movement()
