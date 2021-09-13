extends Node2D

export var speed:=200.0
onready var pillar_tscn:=preload("res://Scenes2/Pillar/Pillar.tscn")

func add_pillar():
	var pillar=pillar_tscn.instance()
	var last_pillar=get_child(get_child_count()-1)
	pillar.position=last_pillar.position+Vector2(last_pillar.lenght,0)+last_pillar.position
	last_pillar.necesary_stick_lenght=last_pillar.end_position
	print(last_pillar.name)
	add_child(pillar)

func _process(delta):
	if Input.is_key_pressed(KEY_K):
		add_pillar()
		# print("added")
# func move_to_next(delta):
# 	position.x+=200*delta

# func _process(delta):
# 	pass
