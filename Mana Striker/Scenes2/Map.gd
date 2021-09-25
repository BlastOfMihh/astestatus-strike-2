extends Node2D

export var speed:=200.0
onready var pillar_tscn:=preload("res://Scenes2/Pillar/Pillar.tscn")
onready var score_button:=get_parent().get_node("UI/Score")

var score_dir=("/Score")
var score:=0

func _ready():
	if Globals.once==true:
		Globals.once=false
		var hero=get_parent().get_node("Hero")
		hero.visible=false
		hero.vel.y=200
		score_button.visible=false
	else :add_pillar()

func add_pillar():
	var pillar=pillar_tscn.instance()
	if get_child_count()!=0:
		var last_pillar=get_child(get_child_count()-1)
		pillar.position=last_pillar.position
		pillar.position.x+=last_pillar.lenght+pillar.lenght + rand_range(30,get_viewport().size.x*0.3-30)
	add_child(pillar)
	pillar.connect("completed",self, "add_pillar")
	score+=1
	score_button.text=("Score:\n"+String(score))
#	print("added")

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		add_pillar()
	if get_child_count()>8:
		for i in range(0,3):
			get_child(0).queue_free()
		
