extends Area
 

var speed : = 30.0
var damage : int = 1


func _process (delta):
	# move the bullet forwards
	translation += global_transform.basis.z * speed * delta




#var velo = Vector3()

#func _physics_prossess(delta):
	#move_and_slide(velo)


func _on_Area_body_entered(body):
	if body.has_method("take_damage"):
		body.take_damage(damage)
		destroy()

func destroy ():
	# destroys the bullet
	queue_free()
