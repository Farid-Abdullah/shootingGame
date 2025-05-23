extends Node2D


func _ready():
	print("Ready node is ready")
	
func _process(delta):
	$logo.rotation_degrees += 300*delta
	
	
