extends TextureProgress

func _process(delta):
	update_oxygen_bar()

func update_oxygen_bar():
	$".".value = get_node("/root/Global").oxygen
