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
