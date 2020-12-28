extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
#	make_star_spots()
#	make_light_mask()

func make_star_spots():
	$StarViewport/CanvasLayer.draw_circle(Vector2(100, 100), 50, Color(0, 1, 0, 1))
	for star in $Stars.get_children():
		print("Putting star at", star.position)
#		$StarViewport/CanvasLayer.draw_circle(star.position, star.get_node("CollisionShape2D").shape.radius,
#			Color(1, 0, 0, 0.5))

func make_light_mask():
	var tex = ImageTexture.new()
	tex.create(1024, 768, Image.FORMAT_RGBA8)
	tex.draw($StarMask.get_canvas(), Vector2(0, 0))
	$Light2D.texture = tex
#	dynImage.create(1024, 768, false, Image.FORMAT_RGBA8)
#	dynImage.fill(Color(0, 0, 0, 0))
	
#	for star in $Stars.get_children():
#		dynImage
	
#	imageTexture.create_from_image(dynImage)
#	$Light2D.texture = imageTexture

