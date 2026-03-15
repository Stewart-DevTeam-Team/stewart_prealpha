class_name UpperBar extends ColorRect


signal back_button_pressed()


func _on_back_button_pressed() -> void:
	back_button_pressed.emit()
