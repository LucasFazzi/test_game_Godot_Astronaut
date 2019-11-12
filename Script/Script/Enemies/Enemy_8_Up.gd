extends StaticBody2D

var is_visible = true
var not_visible = false
var timer_range = range (2.5,7.5)
var timer_create

func _ready():
	add_to_group("enemies")
	randomic_start_visible()

func _process(delta):
	check_visible()


func check_visible():
	if is_visible == true:
		$Enemy_8_Up_Sprite.visible = true
		$Enemy_8_Up_Collision.disabled = false
		not_visible = false

	if not_visible == true:
		$Enemy_8_Up_Sprite.visible = false
		$Enemy_8_Up_Collision.disabled = true
		is_visible = false

func randomic_start_visible():
	is_visible = true
	randomize()
	timer_range.shuffle()
	timer_create = timer_range[1]
	var timer_start = Timer.new()
	timer_start.connect("timeout",self,"_on_timer_start_timeout") 
	add_child(timer_start) 
	timer_start.set_wait_time(timer_create) 
	timer_start.set_one_shot(false)
	timer_start.start()

func _on_timer_start_timeout():
	if is_visible == false:
		is_visible = true
	elif is_visible == true:
		is_visible = false
	if not_visible == true:
		not_visible = false
	elif not_visible == false:
		not_visible = true