extends Sprite2D

var PlayerScript = preload("res://assets/scripts/player.gd")	
var timer: float = 0.0
var atk: int = 1

func _process(delta):
	timer += 1 * delta
	var current_position = position

	var direction = Global.player_position - current_position

	if direction.length() <= 25:
		
		if timer >= Global.enemy.atk_speed:
			if PlayerScript.takeDamage(atk):
				print("Damage Done By ", self)
				timer = 0
		print(timer)
	var normalized_direction = direction.normalized()

	position += normalized_direction * Global.enemy.speed * delta
