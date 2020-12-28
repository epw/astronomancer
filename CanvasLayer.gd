extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _draw():
#	draw_circle(Vector2(200, 200), 50, Color(0, 0, 1, 1))
	draw_rect(Rect2(0, 0, 1024, 768), Color(1, 1, 1, .5))
	for star in get_node("../../Stars").get_children():
		draw_circle(star.position, star.get_node("CollisionShape2D").shape.radius,
				Color(1, 1, 1, 1))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
