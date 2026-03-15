extends Control


@onready var upper_bar: UpperBar = %UpperBar


func _ready() -> void:
	upper_bar.back_button_pressed.connect(func():
		SceneManager.change_to_scene("start_menu")
	)
