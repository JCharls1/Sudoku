extends Control

const Cell = preload("res://cell.tscn")
const _Button = preload("res://num_button.tscn")

var cells : Array = []
var current_button : int = 1
var grid = []
var puzzle = []
var check_grid = []
const SIZE = 9
@onready var popup = $Window

# Called when the node enters the scene tree for the first time.
func _ready():
	initialize_grid()
	initialize_arrays()
	_fill_grid()
	puzzle = puzzle_equals_grid(grid)
	_remove_numbers(40)
	put_in_grid(puzzle)
	print(_is_valid_sudoku(puzzle))
	#popup.show()

func _on_restart_button_pressed():
	get_tree().reload_current_scene()

func solve_button():
	put_in_grid(grid)

func check_button():
	fill_check_grid()
	if(_is_valid_sudoku(check_grid)):
		popup.show()
		print("valid")
	else:
		print("invalid")

func initialize_grid():
	for cell_count in range(9*9):
		var cell = Cell.instantiate()
		cell.main = self
		$Cells.add_child(cell)
		cells.append(cell)
		cell.cell_updated.connect(_on_cell_updated)

func initialize_arrays():
	grid = []
	puzzle = []
	check_grid = []
	for i in range(SIZE):
		grid.append([])
		puzzle.append([])
		check_grid.append([])
		for j in range(SIZE):
			grid[i].append(0)
			puzzle[i].append(0)
			check_grid[i].append(0)

func put_in_grid(arr):
	var i = 0
	for row in range(SIZE):
		for col in range(SIZE):
			if  arr[row][col] != 0:
				await get_tree().create_timer(0.1).timeout
				cells[i].draw_num(arr[row][col])
			else:
				cells[i].draw_num(" ")
			i+=1

func _on_cell_updated(cell):
	#cells[0].draw_num(9)
	pass

func get_current_board_state():
	var arr : Array = []
	for n in 9*9:
		arr.append(cells[n].cell_value)
	return arr


func fill_check_grid():
	var a = 0
	for i in 9:
		for j in 9:
			check_grid[i][j] = int(cells[a].cell_value)
			a+=1
# backtracking to generate sudoku puzzle

# Fill the diagonal 3x3 subgrids
func _fill_diagonal_subgrids():
	for i in range(0, SIZE, 3):
		_fill_subgrid(i, i)

func _fill_grid():
	_fill_diagonal_subgrids()
	_fill_remaining(0, 3)

func puzzle_equals_grid(arr):
	var puzzle = []
	for i in range(SIZE):
		puzzle.append([])
		for j in range(SIZE):
			puzzle[i].append(0)

	for i in range(SIZE):
		for j in range(SIZE):
			puzzle[i][j] = grid[i][j]
	return puzzle

func _fill_subgrid(row, col):
	var num
	for i in range(3):
		for j in range(3):
			while true:
				num = randi() % 9 + 1
				if _is_safe_to_place(grid, row + i, col + j, num):
					grid[row + i][col + j] = num
					break

func _is_safe_to_place(grid, row, col, num):
	for x in range(SIZE):
		if grid[row][x] == num or grid[x][col] == num:
			return false
	var startRow = row - row % 3
	var startCol = col - col % 3
	for i in range(3):
		for j in range(3):
			if grid[startRow + i][startCol + j] == num:
				return false
	return true

func _fill_remaining(i, j):
	if j >= SIZE and i < SIZE - 1:
		i += 1
		j = 0
	if i >= SIZE and j >= SIZE:
		return true
	if i < 3:
		if j < 3:
			j = 3
	elif i < 6:
		if j == (i / 3) * 3:
			j += 3
	else:
		if j == 6:
			i += 1
			j = 0
			if i >= SIZE:
				return true
	for num in range(1, SIZE + 1):
		if _is_safe_to_place(grid, i, j, num):
			grid[i][j] = num
			if _fill_remaining(i, j + 1):
				return true
			grid[i][j] = 0
	return false

func _remove_numbers(num_holes):
	for i in range(num_holes):
		var row = randi() % SIZE
		var col = randi() % SIZE
		while puzzle[row][col] == 0:
			row = randi() % SIZE
			col = randi() % SIZE
		puzzle[row][col] = 0

func _has_unique_solution(grid):
	var count = 0
	_solve(grid, count)
	return count == 1

func _solve(grid, count):
	for i in range(SIZE):
		for j in range(SIZE):
			if grid[i][j] == 0:
				for num in range(1, SIZE + 1):
					if _is_safe_to_place(grid, i, j, num):
						grid[i][j] = num
						if _solve(grid, count):
							count += 1
						grid[i][j] = 0
				return false
	return true

func _print_grid(grid, title):
	print(title)
	for i in range(SIZE):
		var line = ""
		for j in range(SIZE):
			if grid[i][j] == 0:
				line += ". "
			else:
				line += str(grid[i][j]) + " "
		print(line)
	print("")

# check if the answer is correct
func _is_valid_sudoku(grid):
	return _no_zeros(grid) and _are_rows_valid(grid) and _are_cols_valid(grid) and _are_subgrids_valid(grid)

func _no_zeros(grid):
	for row in range(SIZE):
		for col in range(SIZE):
			if grid[row][col] == 0:
				return false
	return true

func _are_rows_valid(grid):
	for row in range(SIZE):
		var seen = []
		for col in range(SIZE):
			var num = grid[row][col]
			if num in seen:
				return false
			if num != 0:
				seen.append(num)
	return true

func _are_cols_valid(grid):
	for col in range(SIZE):
		var seen = []
		for row in range(SIZE):
			var num = grid[row][col]
			if num in seen:
				return false
			if num != 0:
				seen.append(num)
	return true

func _are_subgrids_valid(grid):
	for box_row in range(0, SIZE, 3):
		for box_col in range(0, SIZE, 3):
			if not _is_subgrid_valid(grid, box_row, box_col):
				return false
	return true

func _is_subgrid_valid(grid, start_row, start_col):
	var seen = []
	for row in range(3):
		for col in range(3):
			var num = grid[start_row + row][start_col + col]
			if num in seen:
				return false
			if num != 0:
				seen.append(num)
	return true

#buttons
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


func _on_window_close_requested():
	popup.hide()
