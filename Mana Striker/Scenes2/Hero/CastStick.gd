extends State

onready var stick_tscn=preload("res://Scenes2/Stick/Stick.tscn")
var stick_fallen:=false

#copy
func _ready():
	conflicting_states=[]
	removing_states=[]
	necessary_states=[]

func get_transition():
	if stick_fallen==true:
		stick_fallen=false
		return "Walk"
	return null

func _stick_fallen():
	stick_fallen=true

func enter_state(_old_states):
	var stick=stick_tscn.instance()
	var shape_extent=pr.collision_shape.shape.extents
	stick._ready()
	stick.global_position=Vector2(pr.position.x+shape_extent.x+stick.collision_shape.shape.extents.x+0.4,0)
	stick.connect("stick_fallen", self, "_stick_fallen")
	pr.map.add_child(stick)

func exit_state(_new_states):
	pass

func _during_state(_delta):
	pass
#
