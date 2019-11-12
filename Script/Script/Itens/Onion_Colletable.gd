extends Area2D

func _ready():
	play_animation()

func _process(delta):
	check_is_screen()

func check_is_screen():
	if $Onion_Notifier.is_on_screen():
		$Onion_Animation.play("idle")
	if not $Onion_Notifier.is_on_screen():
		$Onion_Animation.stop()

func play_animation():
	$Onion_Animation.play("idle")

func _on_Onion_Colletable_body_entered(body):
	if body.is_in_group("player"):
		if get_node("/root/Global").fart <= 10:
			get_node("/root/Global").fart += 2
			$".".call_deferred("queue_free")
		if get_node("/root/Global").fart > 10:
			$".".call_deferred("queue_free")