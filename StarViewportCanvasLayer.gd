extends Node2D

# Because this becomes the mask for a light, transparent pixels will lead to the
# game display being dark, while opaque pixels will show what is being rendered.
# Since the goal is for the starry sky to be visible, with certain stars
# highlighted, this draws a partially-opaque rectangle over the whole viewport,
# then draws a fully-transparent circle at every star, using the radius of the
# collision circle that detects clicks on the star.
func _draw():
	draw_rect(Rect2(0, 0, 1024, 768), Color(1, 1, 1, .90))
	for star in get_node("../../Stars").get_children():
		draw_circle(star.position, star.get_node("CollisionShape2D").shape.radius,
				Color(1, 1, 1, 1))
