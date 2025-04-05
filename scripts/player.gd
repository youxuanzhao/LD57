extends CharacterBody2D
class_name Player

@export var acc = 270.0
@export var max_speed = 72.0
@export var jump_force = -320.0
@export var friction = 520.0
@export var gravity = 780.0
@export var max_fall_speed = 480.0

@onready var sprite = $Sprite2D
@onready var anim_player = $AnimationPlayer

func _physics_process(delta) -> void:
	apply_gravity(delta)
	var input_axis = Input.get_axis("move_left","move_right")
	if input_axis != 0 && !Input.is_action_pressed("jump"):
		horizontal_movement(delta, input_axis)
		if is_on_floor():
			anim_player.play("running")
		sprite.scale.x = input_axis
	else:
		apply_friction(delta)
		if is_on_floor() && !Input.is_action_pressed("jump"):
			anim_player.play("idle")

	if Input.is_action_pressed("jump") && is_on_floor():
		anim_player.pause()
		sprite.frame = 7

	if Input.is_action_just_released("jump") && is_on_floor():
		velocity.y = jump_force
		sprite.frame = 8
		
	if !is_on_floor() && velocity.y > 0:
		sprite.frame = 9
		
	if is_on_floor() && sprite.frame == 9:
		sprite.frame = 10
	move_and_slide()

func apply_gravity(delta) -> void:
	if !is_on_floor():
		velocity.y = move_toward(velocity.y, max_fall_speed, gravity * delta)

func horizontal_movement(delta, input_axis) -> void:
	velocity.x = move_toward(velocity.x, max_speed * input_axis, acc * delta)

func apply_friction(delta) -> void:
	velocity.x = move_toward(velocity.x, 0, friction * delta)
