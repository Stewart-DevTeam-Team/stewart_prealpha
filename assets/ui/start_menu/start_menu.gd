extends Control


func _on_play_button_pressed() -> void:
	SceneManager.change_to_scene("world")


func _on_credits_button_pressed() -> void:
	SceneManager.change_to_scene("credits_menu")


func _on_quit_button_pressed() -> void:
	get_tree().quit()
