extends Node

var oxygen = 1000
var fart = 5
var timer_oxygen
var portal_keys_lvl_1 = 10
var speech_possible = [str("There are so many crystals yet and I have to collect all..."), str("Some crystals already collected, I begin to see a future ...")\
, str("Then I begin to realize that I can go home..."), str("I can already think I'm coming, the Earth is getting closer and closer.."), str("Finally i see the end of everything and i'm going away from here")]
var speech
var check_level = [false,false,false,false,false,false,false,false,false,false]

var check_crystal_portal_lvl1 = [false,false,false,false,false,false,false,false,false,false]

var collectables_oxygen_lvl_1 = [false,false,false,false,false,false,false,false,false,false,\
false,false,false,false,false,false,false,false,false,false,\
false,false,false,false,false,false,false,false,false,false,\
false,false,false,false,false,false,false,false,false,false,\
false,false,false,false,false,false,false,false]

var collectables_oxygen_lvl_2 = [false,false,false,false]
var collectables_oxygen_lvl_3 = [false,false,false]
var collectables_oxygen_lvl_4 = [false,false,false,false,false,false,false,false,false]
var collectables_oxygen_lvl_5 = [false,false,false,false,false,false,false,false,false,\
false,false,false,false,false,false,false,false,false]

func _ready():
	check_oxygen()

func _process(delta):
	check_speech()

func check_oxygen():
	timer_oxygen = Timer.new()
	timer_oxygen.connect("timeout",self,"_on_timer_oxygen_timeout") 
	add_child(timer_oxygen) 
	timer_oxygen.set_wait_time(3) 
	timer_oxygen.set_one_shot(false)
	timer_oxygen.start()

func _on_timer_oxygen_timeout():
	oxygen -= 0.5

func check_speech():
	speech = speech_possible
	if portal_keys_lvl_1 == 10 or portal_keys_lvl_1 == 9:
		speech = speech_possible [0]
	if portal_keys_lvl_1 == 8 or portal_keys_lvl_1 == 7:
		speech = speech_possible [1]
	if portal_keys_lvl_1 == 6 or portal_keys_lvl_1 == 5:
		speech = speech_possible [2]
	if portal_keys_lvl_1 == 4 or portal_keys_lvl_1 == 3:
		speech = speech_possible [3]
	if portal_keys_lvl_1 == 2 or portal_keys_lvl_1 == 1:
		speech = speech_possible [4]
