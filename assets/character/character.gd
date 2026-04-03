class_name Character extends CharacterBody2D


@export_group("Movement")
## Velocidad al caminar
@export var walk_speed: float = 12.0
## Velocidad al correr
@export var run_speed: float = 24.0


@export_group("Cámara")
## Velocidad a la que la cámara sigue al jugador
@export var follow_speed := 5.0