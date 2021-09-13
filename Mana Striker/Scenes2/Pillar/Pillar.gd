extends Node2D

onready var collision_shape:=$Sprite2

var distance := rand_range(12.0,200)
var lenght:=rand_range(12.0,200)


func _ready():
	scale.x=scale.x*lenght/collision_shape.shape.extents.x
