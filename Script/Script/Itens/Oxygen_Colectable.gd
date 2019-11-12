extends Area2D

func _process(delta):
	check_is_screen()

func check_is_screen():
	if $Oxygen_Notifier.is_on_screen():
		$Oxygen_Colectable_AnimatedSprite.play("idle")
	if not $Oxygen_Notifier.is_on_screen():
		$Oxygen_Colectable_AnimatedSprite.stop()

func _on_Oxygen_Colectable_body_entered(body):
	if body.is_in_group("player"):
		if get_node("/root/Global").oxygen <= 1000:
			get_node("/root/Global").oxygen += 45
			$".".call_deferred("queue_free")
		if get_node("/root/Global").oxygen > 1000:
			$".".call_deferred("queue_free")