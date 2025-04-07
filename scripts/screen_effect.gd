extends CanvasLayer

func _ready():
	$AnimationPlayer.play("fade_white")

func transition():
	$AnimationPlayer.play("fade_black")


func _on_game_manager_transit_to_next_scene() -> void:
	$AnimationPlayer.play("fade_black")


func _on_level_0_transit_to_next_scene() -> void:
	$AnimationPlayer.play("fade_black")


func _on_level_1_transit_to_next_scene() -> void:
	$AnimationPlayer.play("fade_black")


func _on_her_transit_to_next_scene() -> void:
	$AnimationPlayer.play("fade_black")


func _on_secret_0_transit_to_next_scene() -> void:
	$AnimationPlayer.play("fade_black")


func _on_level_6_transit_to_next_scene() -> void:
	$AnimationPlayer.play("fade_black")


func _on_door_body_entered(body: Node2D) -> void:
	$AnimationPlayer.play("fade_black_end")


func _on_area_2d_body_entered(body: Node2D) -> void:
	$AnimationPlayer.play("fade_black_secret")
