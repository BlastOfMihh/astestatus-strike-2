extends Node2D


func _on_Detector_body_entered(body):
	if body.has_method("do_idle"):
		body.do_idle()
	queue_free()
