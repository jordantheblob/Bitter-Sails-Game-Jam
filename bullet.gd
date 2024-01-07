extends Node2D
var _speed = 10
var _angle 

# Called when the node enters the scene tree for the first time.
func _ready():
	var mouse_position = get_global_mouse_position()
	var direction = mouse_position - position
	_angle = direction.angle()

func _process(delta):
	position.x += cos(_angle)*_speed
	position.y += sin(_angle)*_speed
	
