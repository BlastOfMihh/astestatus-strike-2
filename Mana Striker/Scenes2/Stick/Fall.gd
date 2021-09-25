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
	pr.particles.emitting=false
	pass

func exit_state(new_states):
	pr.collision_shape.disabled=false
	pr.emit_signal("stick_fallen")

func _during_state(delta):
	pr.rotation_degrees+=pr.ang_speed*delta
	pr.rotation_degrees=min(pr.rotation_degrees,90) #fix this
#
