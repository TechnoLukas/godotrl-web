extends RigidBody3D

@export var speed := 2.0

func reset():
	position = Vector3.ZERO
	linear_velocity = Vector3(randf_range(-1.0,1.0),0.0,randf_range(-1.0,1.0))
	_normalize_velocity()

func _physics_process(delta):
	_normalize_velocity()
	
func _normalize_velocity():
	linear_velocity = linear_velocity.normalized()
	linear_velocity *= speed
