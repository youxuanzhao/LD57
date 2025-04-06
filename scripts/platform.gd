extends AnimatableBody2D
class_name Platform

@export var moving_direction: Vector2
@export var c_factor: Vector2

@onready var last_player_position: Vector2 = Player.instance.position
@onready var current_player_position: Vector2 = Player.instance.position

func _physics_process(delta: float) -> void:
	current_player_position = Player.instance.position
	
	var temp = current_player_position - last_player_position
	
	var f = 0
	if c_factor.x != 0:
		f += temp.x * c_factor.x
	if c_factor.y != 0:
		f += temp.y * c_factor.y
	
	
	last_player_position = current_player_position
	
	position += moving_direction * f * delta
		
