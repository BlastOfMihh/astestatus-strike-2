extends CanvasLayer


func _on_Button_button_up():
	get_tree().change_scene("res://Scenes2/StickHero.tscn")
	queue_free()
