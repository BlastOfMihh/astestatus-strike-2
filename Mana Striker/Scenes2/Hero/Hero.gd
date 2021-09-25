extends KinematicBody2D

onready var sm=get_node("SM")
onready var map=get_parent().get_node("Map")
onready var collision_shape=$CollisionShape2D
onready var aspr=$Visuals/AnimatedSprite

var speed:=200
var vel:=Vector2.ZERO
# var destination:=Vector2.ZERO

func do_idle():
	sm.request_state("Idle")

func walk_left():
	vel.x=200

func _physics_process(delta):
	vel.y+=10
	vel=move_and_slide(vel, Vector2.UP)
	# collision_shape.shape.extents.x=200
