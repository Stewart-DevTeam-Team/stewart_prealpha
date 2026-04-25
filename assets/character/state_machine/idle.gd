class_name CharacterIdle extends CharacterState


func start() -> void:
	if not character.is_node_ready(): await character.ready
	character.velocity = Vector2.ZERO
	character.play_anim(&"idle")


func physics_update(_delta: float) -> void:
	# Si presionamos correr, pasa a Run
	if Input.is_action_pressed(&"sprint"): to_state.emit(CharacterRun)

	# Si no está quieto, pasa a Walk
	if character.input_direction: to_state.emit(CharacterWalk)
