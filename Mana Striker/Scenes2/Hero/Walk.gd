extends State

var do_idle:=false
signal idle
#copy

func _ready():
	connect("idle", self, "_idle")
	conflicting_states=[]
	removing_states=[]
	necessary_states=[]

func get_transition():
	if pr.position.y>200:
		return ["Die", "exit"]
	if do_idle:
		do_idle=false
		return ["Idle","exit"]
	return null

func enter_state(old_states):
	pr._ready()
	# yield(pr.aspr)
	pr.aspr.play(name)
	pass

func exit_state(new_states):
	pass

func _during_state(delta):
	pr.walk_left()
	if !pr.is_on_floor():
		pr.aspr.play("Die")
	pass
#
