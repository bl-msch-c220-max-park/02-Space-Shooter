extends CanvasLayer


func _input(event):
	
	if event.is_action_pressed("pause"):# N Key pauses game
		set_visible(!get_tree().paused)
		get_tree().paused = !get_tree().paused


func _on_Continue_pressed():
	get_tree().paused = false
	set_visible(false)

func set_visible(is_visible):
	for node in get_children():
		node.visible = is_visible
