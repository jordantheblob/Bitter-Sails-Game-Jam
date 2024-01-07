extends Node2D
var _speed = 10
var _angle 
# Called when the node enters the scene tree for the first time.
func _ready():
	_angle = PI


func _process(delta):
	position.x += cos(_angle)*_speed
	position.y += sin(_angle)*_speed
