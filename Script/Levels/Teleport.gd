extends Node2D

func _ready():
	play()

func play():
	var timer_play = Timer.new()
	timer_play.connect("timeout",self,"_on_timer_play_timeout") 
	add_child(timer_play) 
	timer_play.set_wait_time(3) 
	timer_play.set_one_shot(false)
	timer_play.start()

func _on_timer_play_timeout():
	check_level()

func check_level():
	if Global.portal_keys_lvl_1 == 10:
		pass
	if Global.portal_keys_lvl_1 == 9:
		get_tree().call_deferred("change_scene","res://Scenes/Levels/Level_2.tscn")
	if Global.portal_keys_lvl_1 == 8:
		get_tree().call_deferred("change_scene","res://Scenes/Levels/Level_3.tscn")
	if Global.portal_keys_lvl_1 == 7:
		get_tree().call_deferred("change_scene","res://Scenes/Levels/Level_4.tscn")