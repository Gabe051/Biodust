extends CharacterBody3D

const mouse_sens = 0.2
var target_speed = 0.0
var current_speed = 0.0
var lerp_speed =  9.0
var curr_dir = Vector3.ZERO
var input_dir = Vector2.ZERO

@onready var head := $Head


func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	
func _input(event):
	if event is InputEventMouseMotion:
		rotate_y(deg_to_rad(-event.relative.x * mouse_sens))
		head.rotate_x(deg_to_rad(-event.relative.y * mouse_sens))
		head.rotation.x = clamp(head.rotation.x,-(PI/2.0), PI/2.0,)

func _physics_process(delta):
	move_and_slide()
