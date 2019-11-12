extends Node

var oxygen = 1000
var fart = 10
var timer_oxygen
var portal_keys_lvl_1 = 10
var speech_possible = [str("Ainda faltam muitos cristais..."), str("Estou vendo um futuro...")\
, str("Estou quase indo embora..."), str("Daqui a pouco mais estarei em casa..."), str("Finalmente, já vejo o fim...")]
var speech
var check_level = [false,false,false,false,false,false,false,false,false,false]
var check_crystal_portal_lvl1 = [false,false,false,false,false,false,false,false,false,false]

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
