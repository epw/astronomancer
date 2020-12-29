extends Area2D

signal send_message

export(String, MULTILINE) var message = "Hello, world"

var pointed_at = false

var initial_modulation = modulate
var highlight = null

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	set_process_unhandled_input(true)
	highlight = Color.from_hsv(randf(), 0.6, 1, 1)
	
	if get_parent():
		#warning-ignore:return_value_discarded
		connect("send_message", get_node("../.."), "_on_Star_send_message", [self])

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("ui_accept") and pointed_at:
		print("The star says: " + message)
		emit_signal("send_message")

func _on_StarSpot_mouse_entered():
	print("Mouse entered start with message", message)
#	modulate = Color(1, 1, .5, 1)
	modulate = highlight
	pointed_at = true

func _on_StarSpot_mouse_exited():
	modulate = initial_modulation
	pointed_at = false

#func _input(event):
#	print("Star Spot event: ", event)
	
#func _unhandled_input(event):
#	print("Star Spot unhandled event: ", event)
