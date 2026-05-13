class_name CharacterPause extends CharacterState


func start() -> void:
	# Detiene al personaje
	character.velocity = Vector2.ZERO
	character.play_anim(&"idle")
