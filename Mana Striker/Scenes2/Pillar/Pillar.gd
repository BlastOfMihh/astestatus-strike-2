extends Node2D

signal completed

onready var collision_shape:=$Sprite2
onready var send_to_idle=get_node("SendToIdle")
onready var ap=$AnimationPlayer

var distance := rand_range(12.0,200)
var lenght:=rand_range(12.0,200)


func _ready():
	$CollisionShape2D.shape=$CollisionShape2D.shape.duplicate()
	$CollisionShape2D.shape.extents.x=lenght
	send_to_idle.position.x=lenght
	$Sprite.scale.x=lenght/32*2
	connect("completed", get_parent(), "complete_pillar")
	ap.play("enter")
	
func _on_Detector_body_entered(body):
	if body.name=="Hero":
		emit_signal("completed")
