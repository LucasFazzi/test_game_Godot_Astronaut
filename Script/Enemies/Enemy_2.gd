extends KinematicBody2D

var confirm_up = false
var confirm_down = true
var velocity = Vector2()
var move_up = 35
var move_down = -35

func _ready():
	$".".add_to_group("enemies")

func _physics_process(delta):
	update_moves()

func update_moves():

	if confirm_up == true:
		confirm_down = false 
		velocity.y = move_up
		move_and_slide(velocity, Vector2(0,-1), false, 4, PI/4, false).normalized()

	if confirm_down == true:
		confirm_up = false
		velocity.y = move_down
		move_and_slide(velocity, Vector2(0,-1), false, 4, PI/4, false).normalized()

	if test_move(transform,Vector2(0,1)):
		confirm_up = false
		confirm_down = true
	if test_move(transform,Vector2(0,-1)):
		confirm_down = false
		confirm_up = true

func _on_Enemy_2_Area_Hit_area_entered(area):
	if area.is_in_group("hit"):
		$".".call_deferred("queue_free")
