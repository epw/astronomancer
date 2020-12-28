extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _draw():
	draw_texture(get_node("../StarViewport").get_texture(), Vector2(0, 0))
#	draw_rect(Rect2(position, Vector2(1024, 768)), Color(0, 0, 0, 1))
	
#	draw_circle(Vector2(100, 100), 50, Color(1, 1, 1, 1))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
