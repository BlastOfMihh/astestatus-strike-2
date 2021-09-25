extends Node2D

signal stick_fallen

onready var collision_shape=$CollisionShape2D
onready var particles=$Node/Particles2D

export var speed:=20
export var ang_speed:=200

	
