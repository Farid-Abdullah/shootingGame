extends CharacterBody2D

var pos: Vector2 = Vector2.ZERO

const speed: float = 1.3


var test_scale: float = 1

func _ready():
	pos = Vector2(300,200) # gives a starting position to the sprite
	test_scale = 2
	position = Vector2(0,100)

func _process(delta):
	position.x += 1200*delta
	if position.x > 1000:
		position = Vector2(0,100)
		

		

	
	
