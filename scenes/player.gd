extends Node2D

@export var player_speed := 250


# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(100, 500)
	print(Input.get_connected_joypads())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction = Input.get_vector("Player_Move_Left", "Player_Move_Right",
		"Player_Move_Up", "Player_Move_Down")
	
	position += direction * player_speed * delta


func _exit_tree():
	Input.stop_joy_vibration(0)
