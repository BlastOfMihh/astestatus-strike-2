extends KinematicBody

var vel=Vector3(0,0,0)

func apply_vel():
	vel=move_and_slide(vel, Vector3.UP)

func add_gravity():
	vel.y=Globals.gravity

func _physics_process(delta):
	add_gravity()
	apply_vel()
