extends Button
signal cell_updated(cell)

var main : Control 

var cell_value : String = ""

@onready var background = $BG
@onready var border = $Border

func _ready():
	self_modulate.a = 0

func draw_x():
	var tween = get_tree().create_tween()
	self_modulate = Color("#00ffff")
	self_modulate.a = 0
	text = str(main.current_button)
	cell_value = str(main.current_button)
	tween.tween_property(self, "self_modulate:a", 1, 0.5)
	cell_updated.emit(self)

func draw_num(num):
	var tween = get_tree().create_tween()
	self_modulate = Color("#00ffff")
	self_modulate.a = 0
	text = str(num)
	cell_value = str(num)
	tween.tween_property(self, "self_modulate:a", 1, 0.5)
