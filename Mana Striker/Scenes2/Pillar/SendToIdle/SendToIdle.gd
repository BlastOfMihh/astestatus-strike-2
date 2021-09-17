extends Node2D

onready var detector=$Detector

func _on_Detector_body_entered(body):
	if body.has_method("do_idle"):
		body.do_idle()
	queue_free()
