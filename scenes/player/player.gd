extends Node2D

@export var rotation_speed:=100.0
var laser_path = preload("res://scenes/player/bullet.tscn")
func _physics_process(delta):
	look_at(get_global_mouse_position())
	if Input.is_action_just_pressed("primary action"):
		fire()
func _ready():
	pass
func _process(delta):
	
	var direction = Input.get_vector("left","right","up","down")
	position+= 800*delta*direction
	if Input.is_action_just_pressed("secondary action"):
		print("GRENADE!! (right click or space)")
	

func fire():
	var laser = laser_path.instantiate()
	laser.dir = rotation
	laser.pos = $gun.global_position
	laser.rota = global_rotation
	get_parent().add_child(laser)
