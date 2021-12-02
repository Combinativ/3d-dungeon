extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var SENSITIVITY_SLIDE = 15
var dragging = false
#Try to experiment with different values(Didn't test any of this)

# Called when the node enters the scene tree for the first time.
func _ready():
	var SENSITIVITY_SLIDE = 15
	pass # Replace with function body.
func _input(event):
	#Dragging toggle
	if event is InputEventScreenTouch:
		if !dragging and event.pressed:
			dragging = true
		elif dragging and !event.pressed:
			dragging = false
			Input.action_release("turn_left")
			Input.action_release("turn_right")
	print("Dragging:", dragging)
	if event is InputEventScreenDrag and dragging:
		var swipe = event.relative
		if (swipe.x < -SENSITIVITY_SLIDE) :	Input.action_press("turn_left")
		elif (swipe.x > SENSITIVITY_SLIDE) : Input.action_press("turn_right")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
