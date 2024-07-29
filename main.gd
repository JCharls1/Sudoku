extends Control

const Cell = preload("res://Cell.tscn")
const _Button = preload("res://num_button.tscn")

var cells : Array = []
var a = "nigga"
var current_button : int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	for cell_count in range(9*9):
		var cell = Cell.instantiate()
		cell.main = self
		$Cells.add_child(cell)
		cells.append(cell)
		cell.cell_updated.connect(_on_cell_updated)

func _on_cell_updated(cell):
	print(get_current_board_state())

func get_current_board_state():
	var arr : Array = []
	for n in 9*9:
		arr.append(cells[n].cell_value)
	return arr

func _on_restart_button_pressed():
	get_tree().reload_current_scene()

func _on_click_num():
	current_button = int($Buttons/num_button.text)
	print(current_button)

func _on_click_num2():
	current_button = int($Buttons/num_button2.text)
	print(current_button)

func _on_click_num3():
	current_button = int($Buttons/num_button3.text)
	print(current_button)

func _on_click_num4():
	current_button = int($Buttons/num_button4.text)
	print(current_button)

func _on_click_num5():
	current_button = int($Buttons/num_button5.text)
	print(current_button)

func _on_click_num6():
	current_button = int($Buttons/num_button6.text)
	print(current_button)

func _on_click_num7():
	current_button = int($Buttons/num_button7.text)
	print(current_button)

func _on_click_num8():
	current_button = int($Buttons/num_button8.text)
	print(current_button)
	
func _on_click_num9():
	current_button = int($Buttons/num_button9.text)
	print(current_button)
