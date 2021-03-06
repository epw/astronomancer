extends Area2D

signal send_message

export(String, MULTILINE) var message = "Hello, world"

export var will_fall = false # Will inform the player about the falling star

export var show_circle = true

var pointed_at = false

func _ready():
	if get_parent():
		#warning-ignore:return_value_discarded
		connect("send_message", get_node("../.."), "_on_Star_send_message", [self])

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("ui_accept") and pointed_at:
		clicked()

func _unhandled_input(event):
	if event is InputEventScreenTouch:
		if event.pressed and event.position.distance_to(position) <= $CollisionShape2D.shape.radius:
			clicked()

func _draw():
	if show_circle:
		draw_arc(Vector2(0, 0), $CollisionShape2D.shape.radius, 0, PI * 2, 32, Color(1, 1, 1, .2), 1, true)
	if pointed_at:
		draw_circle(Vector2(0, 0), $CollisionShape2D.shape.radius, Color(1, 1, 1, .1))

func _on_StarSpot_mouse_entered():
	pointed_at = true
	update()
	$AudioStreamPlayer.play(0)
	

func _on_StarSpot_mouse_exited():
	pointed_at = false
	update()

func clicked():
	emit_signal("send_message")
