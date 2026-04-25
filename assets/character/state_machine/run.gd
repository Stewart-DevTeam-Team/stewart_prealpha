class_name CharacterRun extends CharacterState


func start() -> void:
	character.play_anim(&"run")


func physics_update(_delta: float) -> void:
	# Establecemos la velocidad
	character.velocity = character.last_direction * character.run_speed

	# Si está quieto, pasa a Idle
	if character.velocity.is_zero_approx():
		to_state.emit(CharacterIdle)
		return

	# Si soltamos correr, pasamos a Walk
	if not Input.is_action_pressed(&"sprint"):
		to_state.emit(CharacterWalk)
		return
