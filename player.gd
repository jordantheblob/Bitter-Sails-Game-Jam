extends CharacterBody2D

var bullet_instance = preload("res://bullet.tscn")
const speed = 400.0

signal shoot(bullet, location)

func _physics_process(_delta):
	var direction = Input.get_vector('ui_left', 'ui_right', 'ui_up', 'ui_down')
	velocity = direction * speed

	move_and_slide()

func _process(_delta):
	if Input.is_action_just_pressed("attack"):
		shoot.emit(bullet_instance, position)
	pass
