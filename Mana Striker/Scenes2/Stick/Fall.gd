extends State

#copy
func _ready():
	conflicting_states=[]
	removing_states=[]
	necessary_states=[]

func get_transition():
	if pr.rotation_degrees==90:
		return ["exit"]
	return null

func enter_state(old_states):
	pass

func exit_state(new_states):
	pr.collision_shape.disabled=false
	pr.emit_signal("stick_fallen")

var speed:=20.0

func _during_state(delta):
	pr.rotation_degrees+=speed*delta
	pr.rotation_degrees=min(pr.rotation_degrees,90) #fix this
#
