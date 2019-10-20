extends Area2D

var timer_hit_1

func _ready():
	add_to_group("hit")
	check_hit_1()

func check_hit_1():
	timer_hit_1 = Timer.new()
	timer_hit_1.connect("timeout",self,"_on_timer_hit_1_timeout") 
	add_child(timer_hit_1) 
	timer_hit_1.set_wait_time(0.1) 
	timer_hit_1.set_one_shot(false)
	timer_hit_1.start()

func _on_timer_hit_1_timeout():
	$".".call_deferred("queue_free")