extends Area2D

func _on_Oxygen_Colectable_body_entered(body):
	if body.is_in_group("player"):
		if get_node("/root/Global").oxygen <= 1000:
			get_node("/root/Global").oxygen += 30
			$".".call_deferred("queue_free")
		if get_node("/root/Global").oxygen > 1000:
			$".".call_deferred("queue_free")