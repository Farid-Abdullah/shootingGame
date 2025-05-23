extends Node2D

func _ready():
	pass
func _process(delta):
	pass
	var direction = Input.get_vector("left","right","up","down")
	position+= 800*delta*direction
	
	if Input.is_action_just_pressed("secondary action"):
		print("grenade!")
