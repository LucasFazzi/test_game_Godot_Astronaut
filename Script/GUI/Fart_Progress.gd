extends TextureProgress

func _process(delta):
	update_fart_bar()

func update_fart_bar():
	$".".value = get_node("/root/Global").fart
