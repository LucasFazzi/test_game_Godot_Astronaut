extends Node2D

var screen_choice = 0

func ready():
	screen_choice_selector()

func screen_choice_selector():
	screen_choice = 0

func _process(delta):
	if Input.is_action_just_pressed("start") or Input.is_action_just_pressed("move_jump"):
		screen_choice += 1
		screens()

func screens():
	if screen_choice == 0:
		$Start_Screen_AnimatedSprite.play("start_screen")
	if screen_choice == 1:
		$Start_Screen_AnimatedSprite.play("moves_screen")
	if screen_choice == 2:
		$Start_Screen_AnimatedSprite.play("itens_screen")
	if screen_choice == 3:
		get_tree().call_deferred("change_scene","res://Scenes/Levels/Level_1.tscn")
	else:
		pass