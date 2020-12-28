extends Area2D

signal send_message

export(String, MULTILINE) var message = "Hello, world"

var rng = RandomNumberGenerator.new()

var pointed_at = false

var initial_modulation = modulate
var highlight = null


# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()
	highlight = Color.from_hsv(rng.randf(), 0.6, 1, 1)
	
	if get_parent():
		#warning-ignore:return_value_discarded
		connect("send_message", get_parent(), "_on_Star_send_message", [self])

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("ui_accept") and pointed_at:
		print("The star says: " + message)
		emit_signal("send_message")

func _on_Star_mouse_entered():
#	modulate = Color(1, 1, .5, 1)
	modulate = highlight
	pointed_at = true

func _on_Star_mouse_exited():
	modulate = initial_modulation
	pointed_at = false
