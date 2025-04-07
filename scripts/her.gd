extends AnimatedSprite2D

func _process(delta: float) -> void:
	Player.instance.max_speed = ((348.0 - Player.instance.position.x)/653.0) * 54.0

func _on_checkpoint_4_body_entered(body: Node2D) -> void:
	Player.instance.max_speed = 54.0
	get_parent().get_node("Door").visible = true
	queue_free()
