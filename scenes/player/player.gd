extends CharacterBody2D

@export var rotation_speed:=50.0
var laser_path = preload("res://scenes/player/bullet.tscn")
func _physics_process(delta):
	#look_at(get_global_mouse_position()) # add to make player follow mouse
	if Input.is_action_just_pressed("primary action"):
		fire()
	if Input.is_action_just_pressed("left"):
		rotation_degrees = 180
	elif Input.is_action_just_pressed("right"):
		rotation_degrees = 0
	elif Input.is_action_just_pressed("up"):
		rotation_degrees = -90
	elif Input.is_action_just_pressed("down"):
		rotation_degrees = 90

	if Input.is_action_just_pressed("secondary action"):
		print("GRENADE!! (right click or space)")
	#if position.x>
	
	
func _ready():
	pass
func _process(delta):
	
	var direction = Input.get_vector("left","right","up","down")
	
	position+= 500*delta*direction
	

func fire():
	var laser = laser_path.instantiate()
	laser.dir = rotation
	laser.pos = $gun.global_position
	laser.rota = global_rotation
	get_parent().add_child(laser)
