extends RigidBody2D

@export var health: int = 10
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_area_2d_area_entered(area):
	if area.is_in_group('bullet'):
		print_debug('shot')
		health -= 2
		if health == 0:
			call_deferred('remove_enemy')

func remove_enemy():
	get_parent().remove_child(self)
	self.queue_free()
