extends Platform
class_name BreakablePlatform

var blinking = false
var time = 0.0
func on_break():
	if blinking == false:
		blinking = true
		await get_tree().create_timer(2).timeout
		$Sprite2D.visible = false
		$CPUParticles2D.emitting = true
		$CollisionShape2D.disabled = true

func _physics_process(delta: float) -> void:
	super._physics_process(delta)
	if blinking:
		time += delta
		$Sprite2D.material.set("shader_parameter/time", time)
