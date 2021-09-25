extends State

var play_tscn=preload("res://Scenes2/Play/Play.tscn")
#copy
func _ready():
	conflicting_states=[]
	removing_states=[]
	necessary_states=[]

func get_transition():
	return null

func enter_state(old_states):
#	var play = play_tscn.instance()
	get_tree().root.get_child(0).add_child(play_tscn.instance())

#	get_tree().quit()
	pass

func exit_state(new_states):
	pass

func _during_state(delta):
	pass
#
