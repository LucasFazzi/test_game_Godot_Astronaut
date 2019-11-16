extends Area2D

func _process(delta):
	check_is_screen()

func check_is_screen():
	if $Crystal_Portal_2_Notifier.is_on_screen():
		$Cyrstal_Portal_Collectable_2_AnimatedSprite.play("idle")
	if not $Crystal_Portal_2_Notifier.is_on_screen():
		$Cyrstal_Portal_Collectable_2_AnimatedSprite.stop()

func _on_Crystal_Portal_Collectable_2_body_entered(body):
	if body.is_in_group("player"):
		$".".call_deferred("queue_free")
		get_tree().call_deferred("change_scene","res://Scenes/Levels/Teleport_Back.tscn")
	else:
		pass