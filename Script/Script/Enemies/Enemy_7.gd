extends StaticBody2D

var check_FOV = false

func _ready():
	add_to_group("enemies")

func _process(delta):
	check_FOV()
	check_is_screen()

func check_is_screen():
	if $Enemy_7_Notifier.is_on_screen():
		pass
	if not $Enemy_7_Notifier.is_on_screen():
		$Enemy_7_AnimatedSprite.stop()
		$Enemy_7_FOV_Blow.stop()

func _on_Enemy_7_FOV_body_entered(body):
	if body.is_in_group("player"):
		check_FOV = true

func _on_Enemy_7_FOV_body_exited(body):
	if body.is_in_group("player"):
		check_FOV = false

func check_FOV():
	if check_FOV == true:
		$Enemy_7_AnimatedSprite.play("furious")
		$Enemy_7_FOV_Blow.play("enemy_7_FOV_Blow")
	if check_FOV == false:
		$Enemy_7_AnimatedSprite.play("idle")