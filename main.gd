extends Node2D


func _ready():
	pass


func _process(_delta):
	pass


func _on_player_shoot(bullet, location):
	var spawned_bullet = bullet.instantiate()
	add_child(spawned_bullet)
	spawned_bullet.position = location
