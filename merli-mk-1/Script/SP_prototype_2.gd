extends Node2D
var money = GlobalVars.money
var timermodifier = 1 

@onready var timer = $Timer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$L_totalmoney.text = str(money)


func _on_b_getmoney_pressed() -> void:
	money = money + 1
	

func _on_b_automation_pressed() -> void:
	timer.start()
	
	
func _on_timer_timeout() -> void:
	money = money +  timermodifier
	


func _on_b_multiplier_pressed() -> void:
	timermodifier = 2
