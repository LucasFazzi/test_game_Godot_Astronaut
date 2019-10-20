extends Area2D

func _ready():
	pass

func _on_Player_Body_Area_body_entered(body):
	if body.is_in_group("enemies"):
		get_tree().call_deferred("reload_current_scene")
