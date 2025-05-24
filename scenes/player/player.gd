extends Node2D
@export var rotation_speed:=100.0
func _physics_process(delta):
	$playerImage.look_at(get_global_mouse_position())
	
func _ready():
	pass
func _process(delta):
	
	var direction = Input.get_vector("left","right","up","down")
	position+= 800*delta*direction
	if Input.is_action_just_pressed("secondary action"):
		print("GRENADE!! (right click or space)")
	if Input.is_action_just_pressed("primary action"):
		print("SHOOTING LASER! (left click)")
