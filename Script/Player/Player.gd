extends KinematicBody2D

signal head_hit_box

var shot_creation_preload = preload ("res://Scenes/Hits/Hit_1.tscn")
var fart_creation_preload = preload ("res://Scenes/Itens/Fart_Creation.tscn")
var gravity = 3.5
var move = Vector2()
var speed = 7
var lunar_jump = 6
var pushing = false

var fart_creation = false

func _ready():
	$".".add_to_group("player")
	$Player_Hit_Sprite.visible = false

func _process(delta):
	update_pushing()
	update_animation()
	update_fart_input()
	update_shot()

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
		if $"/root/Global".oxygen > 1:
			move.y -= lunar_jump
			$"/root/Global".oxygen -= 0.25
		if $"/root/Global".oxygen <= 1:
			pass

func update_collision():
	if test_move(transform,Vector2(-1,0)) and Input.is_action_just_released("move_left") and pushing == false:
		move.x += 20
	if test_move(transform,Vector2(-1,0)) and Input.is_action_just_released("move_left") and pushing == true:
		move.x -= 10
	if test_move(transform,Vector2(-1,0)) and Input.is_action_just_released("move_right") and pushing == false:
		move.x -= 20
	if test_move(transform,Vector2(1,0)) and Input.is_action_just_released("move_right") and pushing == true:
		move.x += 10
	move = move_and_slide(move * speed, Vector2(0,-1), false, 4, PI/4, false).normalized()

func update_animation():
	if move.x < 0 and is_on_floor() and not test_move(transform,Vector2(-1,0)):
		$Player_AnimatedSprite.play("left")
	if is_on_floor() and test_move(transform,Vector2(-1,0)) and pushing == false:
		$Player_AnimatedSprite.play("left_pushing")
	if is_on_floor() and test_move(transform,Vector2(-1,0)) and pushing == true:
		$Player_AnimatedSprite.play("left_pushing")
	if move.x > 0 and is_on_floor() and not test_move(transform,Vector2(1,0)):
		$Player_AnimatedSprite.play("right")
	if is_on_floor() and test_move(transform,Vector2(1,0)) and pushing == false:
		$Player_AnimatedSprite.play("right_pushing")
	if is_on_floor() and test_move(transform,Vector2(1,0)) and pushing == true:
		$Player_AnimatedSprite.play("right_pushing")
	if Input.is_action_pressed("move_jump") and Input.is_action_pressed("move_push") and test_move(transform,Vector2(0,1)):
		$Player_AnimatedSprite.play("pushing_top")
	if Input.is_action_pressed("move_jump") and Input.is_action_pressed("move_push") and test_move(transform,Vector2(0,1)):
		$Player_AnimatedSprite.play("pushing_top")
	if move.x == 0 and is_on_floor() and not test_move(transform,Vector2(1,0)) and not test_move(transform,Vector2(-1,0)):
		$Player_AnimatedSprite.play("idle")
	if not test_move(transform,Vector2(0,1)) and move.x > 0:
		$Player_AnimatedSprite.play("jump_right")
	if not test_move(transform,Vector2(0,1)) and move.x < 0:
		$Player_AnimatedSprite.play("jump_left")
	if not test_move(transform,Vector2(0,1)) and move.x == 0:
		$Player_AnimatedSprite.play("jump_front")

func update_fart_input():
	if Global.fart > 0:
		if Input.is_action_just_pressed("make_fart") and\
		Input.is_action_pressed("move_jump"):
			move.y -= 150
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

func update_pushing():
	if Input.is_action_pressed("move_push") and move.x > 0:
		$Player_AnimatedSprite.play("right_jump")
		pushing = true
	if Input.is_action_pressed("move_push") and move.x < 0:
		$Player_AnimatedSprite.play("left_jump")
		pushing = true

	if Input.is_action_just_released("move_pull"):
		pushing = false

func update_shot():
	if Input.is_action_just_pressed("shot") and Global.oxygen >= 1:
		$Player_Hit_Sprite.visible = true
		var shot_creation_confirmation = shot_creation_preload
		var shot_creation_confirmation_instance = shot_creation_confirmation.instance()
		add_child(shot_creation_confirmation_instance)
		Global.oxygen -= 1
		var timer_visible = Timer.new()
		timer_visible.connect("timeout",self,"_on_timer_visible_timeout") 
		add_child(timer_visible) 
		timer_visible.set_wait_time(0.1) 
		timer_visible.set_one_shot(true)
		timer_visible.start()

	if Input.is_action_just_released("shot") and Global.oxygen >= 1:
		pass
	if Input.is_action_just_pressed("shot") and move.x == 0:
		pass

func _on_Player_Head_Area_body_entered(body):
	if is_on_floor():
		if body.is_in_group("box"):
			emit_signal("head_hit_box")
		else:
			pass
	if not is_on_floor():
		pass

func _on_timer_visible_timeout():
	$Player_Hit_Sprite.visible = false