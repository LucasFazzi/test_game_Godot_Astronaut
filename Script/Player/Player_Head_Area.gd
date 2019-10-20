extends Area2D

func _on_Player_KinematicBody_head_hit_box():
	get_tree().call_deferred("reload_current_scene")