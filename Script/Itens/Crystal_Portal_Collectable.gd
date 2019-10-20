extends Area2D

func _ready():
	pass

func _on_Crystal_Portal_Collectable_body_entered(body):
	if body.is_in_group("player"):
		$".".call_deferred("queue_free")
		get_node("/root/Global").portal_keys_lvl_1 -= 1
	else:
		pass