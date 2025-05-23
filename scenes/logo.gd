extends Sprite2D

var pos: Vector2 = Vector2.ZERO

const speed: float = 1.3


var test_scale: float = 1

func _ready():
	pos = Vector2(300,200) # gives a starting position to the sprite
	test_scale = 2

func _process(delta):
	pos.x+= 0.5 # moves the sprite to the right
	pos.y += 0.5 # moves the sprite down every frame
	position = pos
	#rotation_degrees += 5 # equavalent to "rotation +=0.0873" in radians
	test_scale+=0.01
	scale = Vector2(test_scale,test_scale)
	
	
	
