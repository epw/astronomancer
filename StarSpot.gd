extends Area2D

signal send_message

export(String, MULTILINE) var message = "Hello, world"

var pointed_at = false

func _ready():
	if get_parent():
		#warning-ignore:return_value_discarded
		connect("send_message", get_node("../.."), "_on_Star_send_message", [self])

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("ui_accept") and pointed_at:
		clicked()

func _draw():
	if pointed_at:
		draw_circle(Vector2(0, 0), $CollisionShape2D.shape.radius, Color(1, 1, 1, .1))

func _on_StarSpot_mouse_entered():
	pointed_at = true
	update()

func _on_StarSpot_mouse_exited():
	pointed_at = false
	update()

func clicked():
	emit_signal("send_message")
