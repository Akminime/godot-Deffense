extends Node

var player_position: Vector2 = Vector2.ZERO
var speed: float = 200.0
var enemy: Dictionary = {
	"enemy_speed": float(speed * 0.8),
	"atk_speed": float(1.5)
}
var playerData: Dictionary = {
	"Health": int(0),
	"Damage": {
		"Ranged": float(1.0),
		"Melee": float(1.0)
	}
}
