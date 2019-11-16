extends KinematicBody2D

var fart_creation_preload = preload ("res://Scenes/Itens/Fart_Creation.tscn")
var gravity = 9
var gravity_counter = 7
var move = Vector2()
var speed = 7
var lunar_jump = 30
var lunar_levitation = 25
var timer_initial_propulsion

var fart_creation = false

func _ready():
	$".".add_to_group("player")

func _process(delta):
	check_game_over()
	update_animation()
	update_fart_input()

func _physics_process(delta):
	update_moves()
	update_collision()

func update_moves():
	move.y += gravity
	if Input.is_action_pressed("move_right"):
		move.x += speed
	if Input.is_action_pressed("move_left"):
		move.x -= speed
	if not Input.is_action_pressed("move_left") and not Input.is_action_pressed("move_right"): 
		move.x = 0

	if Input.is_action_pressed("move_jump"):
		if $"/root/Global".oxygen > 1 and is_on_floor():
			move.y -= lunar_jump

		if $"/root/Global".oxygen > 1 and not is_on_floor():
			move.y -= lunar_levitation
			gravity_counter -= 1

			$"/root/Global".oxygen -= 0.25
		if $"/root/Global".oxygen <= 1:
			pass

	if Input.is_action_just_released("move_jump") and gravity > 9:
		gravity = 9

	if is_on_floor():
		gravity = 9

	if gravity_counter <= 0 and gravity <= 30:
		gravity += 1
		gravity_counter = 7
	else:
		pass


func update_collision():
	if test_move(transform,Vector2(-1,0)) and Input.is_action_just_released("move_left"):
		move.x += 10
	if test_move(transform,Vector2(1,0)) and Input.is_action_just_released("move_right"):
		move.x += 10
	move = move_and_slide(move * speed, Vector2(0,-1), false, 4, PI/4, false).normalized()

func update_animation():
	if move.x < 0 and is_on_floor() and not test_move(transform,Vector2(-1,0)):
		$Player_AnimatedSprite.play("left")
	if is_on_floor() and test_move(transform,Vector2(-1,0)):
		$Player_AnimatedSprite.play("left_pushing")

	if move.x > 0 and is_on_floor() and not test_move(transform,Vector2(1,0)):
		$Player_AnimatedSprite.play("right")
	if is_on_floor() and test_move(transform,Vector2(1,0)):
		$Player_AnimatedSprite.play("right_pushing")

	if move.x == 0 and is_on_floor() and not test_move(transform,Vector2(1,0)) and not test_move(transform,Vector2(-1,0)):
		$Player_AnimatedSprite.play("idle")

	if not is_on_floor() and move.x > 0:
		$Player_AnimatedSprite.play("jump_right")
	if not is_on_floor() and move.x < 0:
		$Player_AnimatedSprite.play("jump_left")
	if not is_on_floor() and move.x == 0:
		$Player_AnimatedSprite.play("jump_front")

func update_fart_input():
	if Global.fart > 0:
		if Input.is_action_just_pressed("make_fart") and\
		Input.is_action_pressed("move_jump"):
			move.y -= 300
			fart_creation = true
		if fart_creation == true:
			var fart_creation_confirmation = fart_creation_preload
			var fart_creation_confirmation_instance = fart_creation_confirmation.instance()
			fart_creation_confirmation_instance.position = $Player_Foot_Position.global_position
			get_parent().add_child(fart_creation_confirmation_instance)
			fart_creation = false
			Global.fart -= 1
		if Input.is_action_just_pressed("make_fart") and\
		Input.is_action_pressed("move_left"):
				move.x -= 300
				move.y -= 50
				fart_creation = true
		if fart_creation == true:
			var fart_creation_confirmation = fart_creation_preload
			var fart_creation_confirmation_instance = fart_creation_confirmation.instance()
			fart_creation_confirmation_instance.position = $Player_Foot_Position.global_position
			get_parent().add_child(fart_creation_confirmation_instance)
			fart_creation = false
			Global.fart -= 1
		if Input.is_action_just_pressed("make_fart") and\
		Input.is_action_pressed("move_right"):
				move.x += 300
				move.y -= 50
				fart_creation = true
		if fart_creation == true:
			var fart_creation_confirmation = fart_creation_preload
			var fart_creation_confirmation_instance = fart_creation_confirmation.instance()
			fart_creation_confirmation_instance.position = $Player_Foot_Position.global_position
			get_parent().add_child(fart_creation_confirmation_instance)
			fart_creation = false
			Global.fart -= 1

	if Global.fart <= 0:
		pass

func check_game_over():
	if get_node("/root/Global").oxygen >0:
		pass
	else:
		get_tree().call_deferred("change_scene","res://Scenes/Levels/Game_Over.tscn")