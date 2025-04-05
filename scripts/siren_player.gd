extends AudioStreamPlayer


func _on_area_2d_body_entered(body: Node2D) -> void:
	play()
	await get_tree().create_timer(4).timeout
	GameManager.instance.transit_to_next_scene.emit()
