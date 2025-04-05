extends Camera2D
class_name PrimaryCamera

static var instance: PrimaryCamera = self

@export var random_strength: float = 30.0

@export var shake_fade: float = 5.0

var shake_strength: float = 0.0

func _ready() -> void:
	instance = self
	
func apply_shake(intensity):
	shake_strength = intensity

func _process(delta):
	if shake_strength > 0:
		shake_strength = lerpf(shake_strength, 0, shake_fade * delta)
		offset = random_offset()

func random_offset():
	return Vector2(randf_range(-shake_strength, shake_strength),randf_range(-shake_strength, shake_strength))
	
