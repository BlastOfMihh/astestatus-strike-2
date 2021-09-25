extends Particles2D

onready var point=get_parent().get_parent().get_node("Tip")

func _process(delta):
#	print(get_parent().name)
	if point:
		print(point.global_position)
		global_position=point.global_position
