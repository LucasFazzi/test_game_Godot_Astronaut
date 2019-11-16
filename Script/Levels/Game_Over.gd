extends Node2D

func _ready():
	play()

func play():
	var timer_play = Timer.new()
	timer_play.connect("timeout",self,"_on_timer_play_timeout") 
	add_child(timer_play) 
	timer_play.set_wait_time(9) 
	timer_play.set_one_shot(false)
	timer_play.start()

func _on_timer_play_timeout():
	get_node("/root/Global").oxygen = 1000
	get_node("/root/Global").fart = 10
	get_node("/root/Global").portal_keys_lvl_1 = 10
	get_node("/root/Global").check_level = [false,false,false,false,false,false,false,false,false,false]
	get_node("/root/Global").check_crystal_portal_lvl1 = [false,false,false,false,false,false,false,false,false,false]
	get_node("/root/Global").collectables_oxygen_lvl_2 = [false,false,false,false]
	get_node("/root/Global").collectables_oxygen_lvl_3 = [false,false,false]
	get_node("/root/Global").collectables_oxygen_lvl_4 = [false,false,false,false,false,false,false,false,false]
	get_node("/root/Global").collectables_oxygen_lvl_5 = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]
	get_tree().call_deferred("change_scene","res://Scenes/Levels/Start_Screen.tscn")
