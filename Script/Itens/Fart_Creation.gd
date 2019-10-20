extends AnimatedSprite

var timer_fart

func _ready():
	$".".add_to_group("fart")
	create_fart()

func create_fart():
	$".".play("idle")
	timer_fart = Timer.new()
	timer_fart.connect("timeout",self,"_on_timer_fart_timeout") 
	add_child(timer_fart) 
	timer_fart.set_wait_time(1.2) 
	timer_fart.set_one_shot(false)
	timer_fart.start()

func _on_timer_fart_timeout():
	$".".call_deferred("queue_free")