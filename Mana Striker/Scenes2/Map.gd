extends Node2D

export var speed:=200.0
onready var pillar_tscn:=preload("res://Scenes2/Pillar/Pillar.tscn")

func _ready():
	add_pillar()

func add_pillar():
	var pillar=pillar_tscn.instance()
	if get_child_count()==0:
		pass
	else:
		var last_pillar=get_child(get_child_count()-1)
		pillar.position=last_pillar.position
		pillar.position.x+=last_pillar.lenght+pillar.lenght + rand_range(30,get_viewport().size.x*0.3-30)
	add_child(pillar)
	pillar.connect("completed",self, "add_pillar")
	print("added")

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		add_pillar()
		
