extends Node2D


func _ready():
	print("Ready node is ready")
	
func _process(delta):
	$logo/logosprite.rotation_degrees += 300*delta
	$logo/CollisionShape2D.rotation_degrees += 300*delta
	
