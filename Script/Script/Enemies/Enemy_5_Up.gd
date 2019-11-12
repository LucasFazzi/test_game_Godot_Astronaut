extends StaticBody2D

var enemy_5_shot_creation_preload = preload("res://Scenes/Enemies/Enemy_5_Shot.tscn")
var enemy_5_timer_shot
var enemy_5_counter_range = range(450,550)
var enemy_5_counter_shot
var enemy_5_counter_saving


func _ready():
	randomic()
	$".".add_to_group("enemies")

func randomic():
	randomize()
	enemy_5_counter_range.shuffle()
	enemy_5_counter_shot = enemy_5_counter_range[1]
	enemy_5_counter_saving = enemy_5_counter_range[1]

func _process(delta):
	check_is_screen()

func check_is_screen():
	if $Enemy_5_1_Notifier.is_on_screen():
		$Enemy_5_1_AnimatedSprite.play()
		enemy_5_counter_shot -= 1
		if enemy_5_counter_shot <= 0:
			shot()
			enemy_5_counter_shot = enemy_5_counter_saving

	if not $Enemy_5_1_Notifier.is_on_screen():
		$Enemy_5_1_AnimatedSprite.stop()

func shot():
	var enemy_5_shot_creation_confirmation = enemy_5_shot_creation_preload
	var enemy_5_shot_creation_confirmation_instance = enemy_5_shot_creation_confirmation.instance()
	enemy_5_shot_creation_confirmation_instance.position = $Enemy_5_PositionShot.global_position
	get_parent().add_child(enemy_5_shot_creation_confirmation_instance)