extends CharacterBody2D

var pos: Vector2 = Vector2.ZERO

const speed: float = 1.3


var test_scale: float = 1
var random = RandomNumberGenerator.new()
func _ready():
	test_scale = 2
	pos = Vector2(571.0, 295.0)
	position = pos


func _process(delta):
	#position.x += 1200*delta
	if position.x > 1000:
		position = pos
	if position.y>1000 or position.y<0:
		position = pos
	
	move_and_slide()
	
	

	
	
