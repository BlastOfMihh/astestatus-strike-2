extends State

#copy
func _ready():
	conflicting_states=[]
	removing_states=["Walk"]
	necessary_states=[]

func get_transition():
	if Input.is_action_just_pressed("stick"):
		return ["CastStick","exit"]
	return null

func enter_state(old_states):
	pr.vel=Vector2.ZERO
	pass

func exit_state(new_states):
	pass

func _during_state(delta):
	pass
#
