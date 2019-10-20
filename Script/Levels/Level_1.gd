extends Node2D

func _process(delta):
	check_change_level()


func check_change_level():
	if Global.level_check[0] == true:
		get_tree().call_deferred("change_scene","res://Scenes/Levels/Level_2.tscn")
	pass
