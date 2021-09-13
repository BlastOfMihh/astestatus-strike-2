extends RichTextLabel

onready var sm=get_parent().get_node("SM")

func _process(delta):
	text=String(sm.active_states)
