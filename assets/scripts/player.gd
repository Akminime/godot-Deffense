extends Node2D

var speedMod: float = 1.0
@onready var healthbar = $HealthBar
var health: int = 10

func _process(delta: float) -> void:
	var direction = Vector2.ZERO
	
	if Input.is_action_pressed("char_right"):
		if position.x >= 1024:
			pass
		else:
			direction.x += 1
	if Input.is_action_pressed("char_left"):
		if position.x <= 20:
			pass
		else:
			direction.x -= 1
	if Input.is_action_pressed("char_down"):
		if position.y >= 590:
			pass
		else:
			direction.y += 1
	if Input.is_action_pressed("char_up"):
		if position.y <= 18:
			pass
		else:
			direction.y -= 1
		
	if direction != Vector2.ZERO:
		direction = direction.normalized()
		
	position += direction * (Global.speed * speedMod) * delta
	Global.player_position = position
	
func takeDamage(damage: int) -> int:
	var base_scale = 1.5
	print("DAMAGE!")
	health -= damage
	if healthbar and healthbar is Sprite2D:
		var new_scale = (base_scale * health) / 100
		healthbar.scale = Vector2(new_scale, 34.796)
		print("Health: ", health)
	return 0
