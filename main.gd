extends Node2D


func _ready():
	pass


func _process(_delta):
	if Input.is_action_just_pressed('attack'):
		print_debug('attack')


func _on_player_shoot(bullet, location):
	var spawned_bullet = bullet.instantiate()
	add_child(spawned_bullet)
	spawned_bullet.position = location
