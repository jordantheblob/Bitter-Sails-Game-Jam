extends CharacterBody2D


const speed = 400.0


func _physics_process(_delta):
	var direction = Input.get_vector('ui_left', 'ui_right', 'ui_up', 'ui_down')
	velocity = direction * speed

	move_and_slide()
