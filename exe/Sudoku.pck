GDPC                                                                                          P   res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scn 1      i      ���?~\��[n@�y�    P   res://.godot/exported/133200997/export-5590ed1765989fa96309ffcc9c3e8997-cell.scn�      �      [�""U)cu��0F�m    X   res://.godot/exported/133200997/export-5743e0c3d591d620d28bb928e184fbe5-num_button.scn  `D      �      �}pg�����=^�z8�    ,   res://.godot/global_script_class_cache.cfg  �K             ��Р�8���8~$}P�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex@            ：Qt�E�cO���       res://.godot/uid_cache.bin  �O      u       %��j!RW����h�jB       res://cell.gd           �      ��
�<���DW�w��       res://cell.tscn.remap   PJ      a       �Z3|fD���k�m�       res://icon.svg  �K      �      k����X3Y���f       res://icon.svg.import   `      �       U�0��F�,�;�0%7       res://main.gd   0      �      ���t�����T�e@}o       res://main.tscn.remap   �J      a       �J�Sw� ������       res://num_button.gd pC      �       �8���i�"j;��n؂       res://num_button.tscn.remap 0K      g       xV���Ѱi��?��H       res://project.binary P      \      z�N)޹����{�W        extends Button
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
          RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    content_margin_left    content_margin_top    content_margin_right    content_margin_bottom 	   bg_color    draw_center    skew    border_width_left    border_width_top    border_width_right    border_width_bottom    border_color    border_blend    corner_radius_top_left    corner_radius_top_right    corner_radius_bottom_right    corner_radius_bottom_left    corner_detail    expand_margin_left    expand_margin_top    expand_margin_right    expand_margin_bottom    shadow_color    shadow_size    shadow_offset    anti_aliasing    anti_aliasing_size    script 	   _bundled       Script    res://cell.gd ��������      local://StyleBoxFlat_q00q6 �         local://StyleBoxFlat_7nlxl �         local://PackedScene_fkjwi I         StyleBoxFlat            �?  �?  �?  �?         StyleBoxFlat          ��?��?��?    	         
                                  Rg?��?W�6?  �?         PackedScene          	         names "         Button    custom_minimum_size    offset_right    offset_bottom    mouse_default_cursor_shape $   theme_override_font_sizes/font_size    text    flat    script    Background    visible    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    mouse_filter    theme_override_styles/panel    Panel    Border    draw_x    pressed    	   variants       
     HB  HB      A                  w                                         �?                         node_count             nodes     G   ��������        ����                                                                   	   ����
   
               	      
      
                                                   ����            	      
      
                               conn_count             conns                                       node_paths              editable_instances              version             RSRC    GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�m�m۬�}�p,��5xi�d�M���)3��$�V������3���$G�$2#�Z��v{Z�lێ=W�~� �����d�vF���h���ڋ��F����1��ڶ�i�엵���bVff3/���Vff���Ҿ%���qd���m�J�}����t�"<�,���`B �m���]ILb�����Cp�F�D�=���c*��XA6���$
2#�E.@$���A.T�p )��#L��;Ev9	Б )��D)�f(qA�r�3A�,#ѐA6��npy:<ƨ�Ӱ����dK���|��m�v�N�>��n�e�(�	>����ٍ!x��y�:��9��4�C���#�Ka���9�i]9m��h�{Bb�k@�t��:s����¼@>&�r� ��w�GA����ը>�l�;��:�
�wT���]�i]zݥ~@o��>l�|�2�Ż}�:�S�;5�-�¸ߥW�vi�OA�x��Wwk�f��{�+�h�i�
4�˰^91��z�8�(��yޔ7֛�;0����^en2�2i�s�)3�E�f��Lt�YZ���f-�[u2}��^q����P��r��v��
�Dd��ݷ@��&���F2�%�XZ!�5�.s�:�!�Њ�Ǝ��(��e!m��E$IQ�=VX'�E1oܪì�v��47�Fы�K챂D�Z�#[1-�7�Js��!�W.3׹p���R�R�Ctb������y��lT ��Z�4�729f�Ј)w��T0Ĕ�ix�\�b�9�<%�#Ɩs�Z�O�mjX �qZ0W����E�Y�ڨD!�$G�v����BJ�f|pq8��5�g�o��9�l�?���Q˝+U�	>�7�K��z�t����n�H�+��FbQ9���3g-UCv���-�n�*���E��A�҂
�Dʶ� ��WA�d�j��+�5�Ȓ���"���n�U��^�����$G��WX+\^�"�h.���M�3�e.
����MX�K,�Jfѕ*N�^�o2��:ՙ�#o�e.
��p�"<W22ENd�4B�V4x0=حZ�y����\^�J��dg��_4�oW�d�ĭ:Q��7c�ڡ��
A>��E�q�e-��2�=Ϲkh���*���jh�?4�QK��y@'�����zu;<-��|�����Y٠m|�+ۡII+^���L5j+�QK]����I �y��[�����(}�*>+���$��A3�EPg�K{��_;�v�K@���U��� gO��g��F� ���gW� �#J$��U~��-��u���������N�@���2@1��Vs���Ŷ`����Dd$R�":$ x��@�t���+D�}� \F�|��h��>�B�����B#�*6��  ��:���< ���=�P!���G@0��a��N�D�'hX�׀ "5#�l"j߸��n������w@ K�@A3�c s`\���J2�@#�_ 8�����I1�&��EN � 3T�����MEp9N�@�B���?ϓb�C��� � ��+�����N-s�M�  ��k���yA 7 �%@��&��c��� �4�{� � �����"(�ԗ�� �t�!"��TJN�2�O~� fB�R3?�������`��@�f!zD��%|��Z��ʈX��Ǐ�^�b��#5� }ى`�u�S6�F�"'U�JB/!5�>ԫ�������/��;	��O�!z����@�/�'�F�D"#��h�a �׆\-������ Xf  @ �q�`��鎊��M��T�� ���0���}�x^�����.�s�l�>�.�O��J�d/F�ě|+^�3�BS����>2S����L�2ޣm�=�Έ���[��6>���TъÞ.<m�3^iжC���D5�抺�����wO"F�Qv�ږ�Po͕ʾ��"��B��כS�p�
��E1e�������*c�������v���%'ž��&=�Y�ް>1�/E������}�_��#��|������ФT7׉����u������>����0����緗?47�j�b^�7�ě�5�7�����|t�H�Ե�1#�~��>�̮�|/y�,ol�|o.��QJ rmϘO���:��n�ϯ�1�Z��ը�u9�A������Yg��a�\���x���l���(����L��a��q��%`�O6~1�9���d�O{�Vd��	��r\�՜Yd$�,�P'�~�|Z!�v{�N�`���T����3?DwD��X3l �����*����7l�h����	;�ߚ�;h���i�0�6	>��-�/�&}% %��8���=+��N�1�Ye��宠p�kb_����$P�i�5�]��:��Wb�����������ě|��[3l����`��# -���KQ�W�O��eǛ�"�7�Ƭ�љ�WZ�:|���є9�Y5�m7�����o������F^ߋ������������������Р��Ze�>�������������?H^����&=����~�?ڭ�>���Np�3��~���J�5jk�5!ˀ�"�aM��Z%�-,�QU⃳����m����:�#��������<�o�����ۇ���ˇ/�u�S9��������ٲG}��?~<�]��?>��u��9��_7=}�����~����jN���2�%>�K�C�T���"������Ģ~$�Cc�J�I�s�? wڻU���ə��KJ7����+U%��$x�6
�$0�T����E45������G���U7�3��Z��󴘶�L�������^	dW{q����d�lQ-��u.�:{�������Q��_'�X*�e�:�7��.1�#���(� �k����E�Q��=�	�:e[����u��	�*�PF%*"+B��QKc˪�:Y��ـĘ��ʴ�b�1�������\w����n���l镲��l��i#����!WĶ��L}rեm|�{�\�<mۇ�B�HQ���m�����x�a�j9.�cRD�@��fi9O�.e�@�+�4�<�������v4�[���#bD�j��W����֢4�[>.�c�1-�R�����N�v��[�O�>��v�e�66$����P
�HQ��9���r�	5FO� �<���1f����kH���e�;����ˆB�1C���j@��qdK|
����4ŧ�f�Q��+�     [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://ckoib1o40we5r"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
                extends Control

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
               RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    content_margin_left    content_margin_top    content_margin_right    content_margin_bottom 	   bg_color    draw_center    skew    border_width_left    border_width_top    border_width_right    border_width_bottom    border_color    border_blend    corner_radius_top_left    corner_radius_top_right    corner_radius_bottom_right    corner_radius_bottom_left    corner_detail    expand_margin_left    expand_margin_top    expand_margin_right    expand_margin_bottom    shadow_color    shadow_size    shadow_offset    anti_aliasing    anti_aliasing_size    script 	   _bundled       Script    res://main.gd ��������   PackedScene    res://num_button.tscn 	��Q��c,      local://StyleBoxFlat_tibwg �         local://PackedScene_x8esb �         StyleBoxFlat          ˅B?�?��>  �?         PackedScene          	         names "   9      Main    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    script    Control 
   ColorRect    color    ColorRect2    restart_button    anchor_left    anchor_top    offset_left    offset_top    offset_right    offset_bottom    theme_override_styles/normal    text    Button    check_button    solve_button    Cells    columns    GridContainer    Buttons    num_button    num_button2    num_button3    num_button4    num_button5    num_button6    num_button7    num_button8    num_button9    Window    initial_position    size    visible 	   Camera2D    Label    layout_direction    _on_restart_button_pressed    pressed    _on_click_num    _on_click_num2    _on_click_num3    _on_click_num4    _on_click_num5    _on_click_num6    _on_click_num7    _on_click_num8    _on_click_num9    _on_window_close_requested    close_requested    	   variants    9                    �?                         �N->�N->�N->  �?            ?     ��     l�     �B     p�                       Restart      ��     p�     ��     ��      Check      �B     t�    ��C     ��      Solve            ��     @@     �A     B   	        D�     ��     DC     ��               1       2       3       4       5       6       7       8       9 -   �   �               Z�     ZB     �A      Puzzle Solved!            ��     x�     xA      asd       node_count             nodes     �  ��������       ����                                                          	   	   ����                                       
                  	      ����                                       
                        ����                                          	      
                                                         ����                                                                                                         ����                                                                                                         ����
                                                                                 ����                                                 !      "      #                                ���   $               %              ���   $               &              ���   $               '              ���   $               (              ���    $               )              ���!   $               *              ���"   $               +              ���#   $               ,              ���$   $               -               %   %   ����   &      '   .   (   /              )   )   ����               *   *   ����                        0      1      2            3                    ����   +         4                              5      6            7                  8             conn_count             conns     [          -   ,                     -                        -                        -   .              	       -   /              
       -   0                     -   1                     -   2                     -   3                     -   4                     -   5                     -   6                     8   7                    node_paths              editable_instances              version             RSRC       extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
 RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    content_margin_left    content_margin_top    content_margin_right    content_margin_bottom 	   bg_color    draw_center    skew    border_width_left    border_width_top    border_width_right    border_width_bottom    border_color    border_blend    corner_radius_top_left    corner_radius_top_right    corner_radius_bottom_right    corner_radius_bottom_left    corner_detail    expand_margin_left    expand_margin_top    expand_margin_right    expand_margin_bottom    shadow_color    shadow_size    shadow_offset    anti_aliasing    anti_aliasing_size    script 	   _bundled       Script    res://num_button.gd ��������      local://StyleBoxFlat_2emub v         local://PackedScene_jmr77 �         StyleBoxFlat          X?c*9?�EG?  �?         PackedScene          	         names "         num_button    custom_minimum_size    offset_right    offset_bottom !   theme_override_colors/font_color    theme_override_styles/normal    script    Button    	   variants       
      B   B      A                 �?                          node_count             nodes        ��������       ����                                                  conn_count              conns               node_paths              editable_instances              version             RSRC[remap]

path="res://.godot/exported/133200997/export-5590ed1765989fa96309ffcc9c3e8997-cell.scn"
               [remap]

path="res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scn"
               [remap]

path="res://.godot/exported/133200997/export-5743e0c3d591d620d28bb928e184fbe5-num_button.scn"
         list=Array[Dictionary]([])
     <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 814 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H446l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z" fill="#478cbf"/><path d="M483 600c0 34 58 34 58 0v-86c0-34-58-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
              ��&:��&   res://cell.tscn}<����bL   res://icon.svg\�7.�o   res://main.tscn	��Q��c,   res://num_button.tscn           ECFG      application/config/name         Sudoku_    application/run/main_scene         res://main.tscn    application/config/features   "         4.2    Mobile     application/config/icon         res://icon.svg  *   display/window/subwindows/embed_subwindows          #   rendering/renderer/rendering_method         mobile      