class_name World extends Node2D


## Nodo con los personajes
@onready var characters: Node2D = $Characters
## Menú de pausa
@onready var pause_menu: PauseMenu = $CanvasLayer/PauseMenu


func _ready() -> void:
	for character: Character in characters.get_children():
		pause_menu.set_visible.connect(character.set_paused)
