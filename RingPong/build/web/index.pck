GDPC                �                                                                      ,   d   res://.godot/exported/133200997/export-1222b1ceeacbc57c3f8fe0e4235d9be0-ExampleRaycastSensor3D.scn  �I      �      hq��"5G���o�K    \   res://.godot/exported/133200997/export-1cc1ad7ce1f98ed0c4cee4b060bc26fd-RaycastSensor3D.scn `v      �      JD�3���v���    T   res://.godot/exported/133200997/export-36a25e342948d0ceacc500772b5412b3-player.scn  P�     �      L{�4�����ǋI�    d   res://.godot/exported/133200997/export-5127fc3fc2907f1e87ac8e869558593d-ExampleRaycastSensor2D.scn  �      3      r�{��3Z={���h    T   res://.godot/exported/133200997/export-5dd17fe71e6f2c7ad1291784df6a68a9-train.scn   ��     �      O	�kG��RU�X�    P   res://.godot/exported/133200997/export-609f762188a68253d349ec58c4f3a8d3-game.scnP     'f      �#��4�G�kݠ���    \   res://.godot/exported/133200997/export-7454c66d21916090bf5dc7766fa8629a-RaycastSensor2D.scn �F      �      �W����W໇�L�)A�    `   res://.godot/exported/133200997/export-d1d9cc1906d18d9a32f853b74a4d90f4-RGBCameraSensor3D.scn   �}      �       CT���=[a��L*    ,   res://.godot/global_script_class_cache.cfg  P�     �      �%eR9`��<E�$��Vv    D   res://.godot/imported/icon.png-45a871b53434e556222f5901d598ab34.ctex��      �       ��H�g~ @"�:SU�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�w     ^      2��r3��MgB�[79       res://.godot/uid_cache.bin  ��     z      �Gء�x���������       res://Player.gd ��     �      4�S��d+շ ���j�    4   res://addons/coi_serviceworker/coi_export_plugin.gd         �      �����.o���d`][�E    ,   res://addons/coi_serviceworker/coi_plugin.gd�      a      k`f�w�OvPN����<%    <   res://addons/godot_rl_agents/controller/ai_controller_2d.gd       �      ���x�����%bf�U�    <   res://addons/godot_rl_agents/controller/ai_controller_3d.gd        �      z �=V���Ec�`��    0   res://addons/godot_rl_agents/godot_rl_agents.gd p�            (5��v��R��b��i    ,   res://addons/godot_rl_agents/icon.png.importp�      �       `���>'0q(ge>    T   res://addons/godot_rl_agents/sensors/sensors_2d/ExampleRaycastSensor2D.tscn.remap   ��     s       �U����OA����W    @   res://addons/godot_rl_agents/sensors/sensors_2d/GridSensor2D.gd  %      �      �i�	sK�5��Y�3    <   res://addons/godot_rl_agents/sensors/sensors_2d/ISensor2D.gd <      �       �����=�
h��؅��    D   res://addons/godot_rl_agents/sensors/sensors_2d/RaycastSensor2D.gd   =      �	      j�=B	��JxjC/)k39    L   res://addons/godot_rl_agents/sensors/sensors_2d/RaycastSensor2D.tscn.remap  0�     l       {�ڹ��w3V��q^    T   res://addons/godot_rl_agents/sensors/sensors_3d/ExampleRaycastSensor3D.tscn.remap   ��     s       )|�*�5�'�W��Q    @   res://addons/godot_rl_agents/sensors/sensors_3d/GridSensor3D.gd 0L      �      �W Z�w�(
�iJ���    <   res://addons/godot_rl_agents/sensors/sensors_3d/ISensor3D.gd f      �       �7U/劊����G��    D   res://addons/godot_rl_agents/sensors/sensors_3d/RGBCameraSensor3D.gd {      i      d[L�o����k��    L   res://addons/godot_rl_agents/sensors/sensors_3d/RGBCameraSensor3D.tscn.remap��     n       ��C���hP�2��    D   res://addons/godot_rl_agents/sensors/sensors_3d/RaycastSensor3D.gd   g      ;      �BR}�^G�-�i���    L   res://addons/godot_rl_agents/sensors/sensors_3d/RaycastSensor3D.tscn.remap   �     l       �Rُ�2��s�;�ok    $   res://addons/godot_rl_agents/sync.gd@�      �0      ����"�!�=��H�s�    (   res://addons/godot_rl_agents/sync_.gd   �      �/      )�ﱵ�2�y�+    (   res://addons/godot_rl_agents/sync_old.gd��      O#      �����Ű�a�ԕ�ё    4   res://assets/peppermint_powerplant_2_1k.hdr.import  0     �       ��9h�3k�܁q�O       res://ball.gd   �     W      ���b�u�h�I�HM       res://controller.gd 0     �       A���nx��4�Z�       res://game.gd   �     d       ��D�Q��o�W�zP�       res://game.tscn.remap    �     a       �?��� �ު��y�       res://icon.svg  0�     N      ]��s�9^w/�����       res://icon.svg.import   ��     �       �8_���%,��q��F0       res://player.tscn.remap p�     c       ������T�?�L���       res://project.binary �     �      �[HV��/����~��       res://train.tscn.remap  ��     b       �)����vf;�l�	�5    @tool
extends EditorExportPlugin

const JS_FILE = "coi-serviceworker.min.js"

var plugin_path: String = get_script().resource_path.get_base_dir()
var exporting_web := false
var export_path := ""
var update_export_options := true

func _get_name() -> String:
	return "CoiServiceWorker"

func _get_export_options(platform: EditorExportPlatform) -> Array[Dictionary]:
	return [
		{
			"option": {
				"name": "include_coi_service_worker",
				"type": TYPE_BOOL
			},
			"default_value": true
		},
		{
			"option": {
				"name": "iframe_breakout",
				"type": TYPE_STRING,
				"hint": PROPERTY_HINT_ENUM,
				"hint_string": "Disabled,Same Tab,New Tab,New Window"
			},
			"default_value": "Disabled"
		}
	]

func _should_update_export_options(platform: EditorExportPlatform) -> bool:
	if not platform is EditorExportPlatformWeb: return false
	var u = update_export_options
	update_export_options = false
	return u

func _export_begin(features: PackedStringArray, is_debug: bool, path: String, flags: int) -> void:
	if features.has("web"):
		if not has_method("get_option") or get_option("include_coi_service_worker"):
			exporting_web = true
		export_path = path
		if has_method("get_option") and get_option("iframe_breakout") != "Disabled":
			if export_path.ends_with("index.html"):
				push_error("ERROR: cannot export as index.html with generate_index_popout option set")
			else:
				var html = POPOUT_INDEX_HTML
				var method = get_option("iframe_breakout")
				if method == "Same Tab":
					html = html.replace("__PARAMS__", "target=\"_parent\"")
				elif method == "New Tab":
					html = html.replace("__PARAMS__", "target=\"_blank\"")
				elif method == "New Window":
					var w = ProjectSettings.get_setting("display/window/size/window_width_override")
					if w <= 0:
						w = ProjectSettings.get_setting("display/window/size/viewport_width")
					var h = ProjectSettings.get_setting("display/window/size/window_height_override")
					if h <= 0:
						h = ProjectSettings.get_setting("display/window/size/viewport_height")
					html = html.replace("__PARAMS__", "onclick=\"window.open('__GAME_HTML__', '_blank', 'popup,innerWidth=" + str(w) + ",innerHeight=" + str(h) + "'); return false;\"")
				else:
					push_error("ERROR: invalid iframe breakout method")
				html = html.replace("__GAME_HTML__", export_path.get_file())
				html = html.replace("__TITLE__", ProjectSettings.get_setting("application/config/name"))
				var file = FileAccess.open(export_path.get_base_dir().path_join("index.html"), FileAccess.WRITE)
				file.store_string(html)
				file.close()

func _export_end() -> void:
	if exporting_web:
		var html := FileAccess.get_file_as_string(export_path)
		var pos = html.find("<script src=")
		html = html.insert(pos, "<script>" + EXTRA_SCRIPT + "</script>\n<script src=\"" + JS_FILE + "\"></script>\n")
		var file := FileAccess.open(export_path, FileAccess.WRITE)
		file.store_string(html)
		file.close()
		DirAccess.copy_absolute(plugin_path.path_join(JS_FILE), export_path.get_base_dir().path_join(JS_FILE))
	exporting_web = false

func _export_file(path: String, type: String, features: PackedStringArray) -> void:
	if path.begins_with(plugin_path):
		skip()

const EXTRA_SCRIPT = """
if (!window.SharedArrayBuffer) {
	document.getElementById('status').style.display = 'none';
	setTimeout(() => document.getElementById('status').style.display = '', 1500);
}
"""

const POPOUT_INDEX_HTML = """<doctype html>
<html>
<head>
<title>__TITLE__</title>
<style>
body {
	background-color: black;
}
div {
	margin-top: 40vh;
	text-align: center;
}
a {
	font-size: 18pt;
	color: #eaeaea;
	background-color: #3b3943;
	background-image: linear-gradient(to bottom, #403e48, #35333c);
	padding: 10px 15px;
	cursor: pointer;
	border-radius: 3px;
	text-decoration: none;
}
a:hover {
	background-color: #403e48;
	background-image: linear-gradient(to top, #403e48, #35333c);
}
</style>
</head>
<body>
<div><a href="__GAME_HTML__" __PARAMS__>Play __TITLE__</a></div>
</body>
</html>
"""
      @tool
extends EditorPlugin

var export_plugin: EditorExportPlugin = null

func _enter_tree() -> void:
	var path: String = get_script().resource_path
	export_plugin = load(path.get_base_dir().path_join("coi_export_plugin.gd")).new()
	add_export_plugin(export_plugin)

func _exit_tree() -> void:
	remove_export_plugin(export_plugin)
	export_plugin = null
               extends Node2D
class_name AIController2D

@export var reset_after := 1000

var heuristic := "human"
var done := false
var reward := 0.0
var n_steps := 0
var needs_reset := false

var _player: Node2D

func _ready():
	add_to_group("AGENT")
	
func init(player: Node2D):
	_player = player
	
#-- Methods that need implementing using the "extend script" option in Godot --#
func get_obs() -> Dictionary:
	assert(false, "the get_obs method is not implemented when extending from ai_controller") 
	return {"obs":[]}

func get_reward() -> float:	
	assert(false, "the get_reward method is not implemented when extending from ai_controller") 
	return 0.0
	
func get_action_space() -> Dictionary:
	assert(false, "the get get_action_space method is not implemented when extending from ai_controller") 
	return {
		"example_actions_continous" : {
			"size": 2,
			"action_type": "continuous"
		},
		"example_actions_discrete" : {
			"size": 2,
			"action_type": "discrete"
		},
		}
	
func set_action(action) -> void:	
	assert(false, "the get set_action method is not implemented when extending from ai_controller") 	
# -----------------------------------------------------------------------------#
	
func _physics_process(delta):
	n_steps += 1
	if n_steps > reset_after:
		needs_reset = true
		
func get_obs_space():
	# may need overriding if the obs space is complex
	var obs = get_obs()
	return {
		"obs": {
			"size": [len(obs["obs"])],
			"space": "box"
		},
	}

func reset():
	n_steps = 0
	needs_reset = false

func reset_if_done():
	if done:
		reset()
		
func set_heuristic(h):
	# sets the heuristic from "human" or "model" nothing to change here
	heuristic = h

func get_done():
	return done
	
func set_done_false():
	done = false

func zero_reward():
	reward = 0.0
	

              extends Node3D
class_name AIController3D

@export var reset_after := 1000

var heuristic := "human"
var done := false
var reward := 0.0
var n_steps := 0
var needs_reset := false

var _player: Node3D

func _ready():
	add_to_group("AGENT")
	
func init(player: Node3D):
	_player = player
	
#-- Methods that need implementing using the "extend script" option in Godot --#
func get_obs() -> Dictionary:
	assert(false, "the get_obs method is not implemented when extending from ai_controller") 
	return {"obs":[]}

func get_reward() -> float:	
	assert(false, "the get_reward method is not implemented when extending from ai_controller") 
	return 0.0
	
func get_action_space() -> Dictionary:
	assert(false, "the get get_action_space method is not implemented when extending from ai_controller") 
	return {
		"example_actions_continous" : {
			"size": 2,
			"action_type": "continuous"
		},
		"example_actions_discrete" : {
			"size": 2,
			"action_type": "discrete"
		},
		}
	
func set_action(action) -> void:	
	assert(false, "the get set_action method is not implemented when extending from ai_controller") 	
# -----------------------------------------------------------------------------#
	
func _physics_process(delta):
	n_steps += 1
	if n_steps > reset_after:
		needs_reset = true
		
func get_obs_space():
	# may need overriding if the obs space is complex
	var obs = get_obs()
	return {
		"obs": {
			"size": [len(obs["obs"])],
			"space": "box"
		},
	}

func reset():
	n_steps = 0
	needs_reset = false

func reset_if_done():
	if done:
		reset()
		
func set_heuristic(h):
	# sets the heuristic from "human" or "model" nothing to change here
	heuristic = h

func get_done():
	return done
	
func set_done_false():
	done = false

func zero_reward():
	reward = 0.0
 RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    script/source    custom_solver_bias    radius    script 	   _bundled       Script C   res://addons/godot_rl_agents/sensors/sensors_2d/RaycastSensor2D.gd ��������   
   local://2 �      
   local://1 *      
   local://3          local://PackedScene_083v3 0      	   GDScript          ]   extends Node2D



func _physics_process(delta: float) -> void:
    print("step start")
    
 	   GDScript          �   extends RayCast2D

var steps = 1

func _physics_process(delta: float) -> void:
    print("processing raycast")
    steps += 1
    if steps % 2:
        force_raycast_update()

    print(is_colliding())
    CircleShape2D             PackedScene          	         names "         ExampleRaycastSensor2D    script    Node2D    ExampleAgent 	   position 	   rotation    RaycastSensor2D    TestRayCast2D 
   RayCast2D    StaticBody2D    CollisionShape2D    shape    	   variants                 
    @D  �C   C��>                   
     �?  PB               node_count             nodes     8   ��������       ����                            ����                                ����                           ����                     	   	   ����                    
   
   ����                   conn_count              conns               node_paths              editable_instances              version             RSRC             @tool
extends ISensor2D
class_name GridSensor2D

@export var debug_view := false:
	get: return debug_view
	set(value):
		debug_view = value
		_update()
		
@export_flags_2d_physics var detection_mask := 0:
	get: return detection_mask
	set(value):
		detection_mask = value
		_update()

@export var collide_with_areas := false:
	get: return collide_with_areas
	set(value):
		collide_with_areas = value
		_update()

@export var collide_with_bodies := true:
	get: return collide_with_bodies
	set(value):
		collide_with_bodies = value
		_update()

@export_range(1, 200, 0.1) var cell_width := 20.0:
	get: return cell_width
	set(value):
		cell_width = value
		_update()

@export_range(1, 200, 0.1) var cell_height := 20.0:
	get: return cell_height
	set(value):
		cell_height = value
		_update()	

@export_range(1, 21, 2, "or_greater") var grid_size_x := 3:
	get: return grid_size_x
	set(value):
		grid_size_x = value
		_update()

@export_range(1, 21, 2, "or_greater") var grid_size_y := 3:
	get: return grid_size_y
	set(value):
		grid_size_y = value
		_update()

var _obs_buffer: PackedFloat64Array
var _rectangle_shape: RectangleShape2D
var _collision_mapping: Dictionary
var _n_layers_per_cell: int

var _highlighted_cell_color: Color
var _standard_cell_color: Color

func get_observation():
	return _obs_buffer
	
func _update():
	if Engine.is_editor_hint():
		if is_node_ready():
			_spawn_nodes()	

func _ready() -> void:
	_set_colors()
	
	if Engine.is_editor_hint():	
		if get_child_count() == 0:
			_spawn_nodes()
	else:
		_spawn_nodes()
		
	
func _set_colors() -> void:
	_standard_cell_color = Color(100.0/255.0, 100.0/255.0, 100.0/255.0, 100.0/255.0)
	_highlighted_cell_color = Color(255.0/255.0, 100.0/255.0, 100.0/255.0, 100.0/255.0)

func _get_collision_mapping() -> Dictionary:
	# defines which layer is mapped to which cell obs index
	var total_bits = 0
	var collision_mapping = {} 
	for i in 32:
		var bit_mask = 2**i
		if (detection_mask & bit_mask) > 0:
			collision_mapping[i] = total_bits
			total_bits += 1
		
	return collision_mapping

func _spawn_nodes():
	for cell in get_children():
		cell.name = "_%s" % cell.name # Otherwise naming below will fail
		cell.queue_free()
	
	_collision_mapping = _get_collision_mapping()
	#prints("collision_mapping", _collision_mapping, len(_collision_mapping))
	# allocate memory for the observations
	_n_layers_per_cell = len(_collision_mapping)
	_obs_buffer = PackedFloat64Array()
	_obs_buffer.resize(grid_size_x*grid_size_y*_n_layers_per_cell)
	_obs_buffer.fill(0)
	#prints(len(_obs_buffer), _obs_buffer )
	
	_rectangle_shape = RectangleShape2D.new()
	_rectangle_shape.set_size(Vector2(cell_width, cell_height))
	
	var shift := Vector2(
		-(grid_size_x/2)*cell_width,
		-(grid_size_y/2)*cell_height,
	)
	
	for i in grid_size_x:
		for j in grid_size_y:
			var cell_position =  Vector2(i*cell_width, j*cell_height) + shift
			_create_cell(i, j, cell_position)
		

func _create_cell(i:int, j:int, position: Vector2):
	var cell : = Area2D.new()
	cell.position = position
	cell.name = "GridCell %s %s" %[i, j]
	cell.modulate = _standard_cell_color
	
	if collide_with_areas:
		cell.area_entered.connect(_on_cell_area_entered.bind(i, j))
		cell.area_exited.connect(_on_cell_area_exited.bind(i, j))
		
	if collide_with_bodies:
		cell.body_entered.connect(_on_cell_body_entered.bind(i, j))
		cell.body_exited.connect(_on_cell_body_exited.bind(i, j))
	
	cell.collision_layer = 0
	cell.collision_mask = detection_mask
	cell.monitorable = true
	add_child(cell)
	cell.set_owner(get_tree().edited_scene_root)

	var col_shape : = CollisionShape2D.new()
	col_shape.shape = _rectangle_shape
	col_shape.name = "CollisionShape2D"
	cell.add_child(col_shape)
	col_shape.set_owner(get_tree().edited_scene_root)
	
	if debug_view:
		var quad = MeshInstance2D.new()
		quad.name = "MeshInstance2D"
		var quad_mesh = QuadMesh.new()
		
		quad_mesh.set_size(Vector2(cell_width, cell_height))
		
		quad.mesh = quad_mesh
		cell.add_child(quad)
		quad.set_owner(get_tree().edited_scene_root)

func _update_obs(cell_i:int, cell_j:int, collision_layer:int, entered: bool):
	for key in _collision_mapping:
		var bit_mask = 2**key
		if (collision_layer & bit_mask) > 0:
			var collison_map_index = _collision_mapping[key]
			
			var obs_index = (
							(cell_i * grid_size_x * _n_layers_per_cell) + 
							(cell_j * _n_layers_per_cell) + 
							collison_map_index
							)
			#prints(obs_index, cell_i, cell_j)
			if entered:
				_obs_buffer[obs_index] += 1
			else:
				_obs_buffer[obs_index] -= 1

func _toggle_cell(cell_i:int, cell_j:int):
	var cell = get_node_or_null("GridCell %s %s" %[cell_i, cell_j])
	
	if cell == null:
		print("cell not found, returning")
		
	var n_hits = 0
	var start_index = (cell_i * grid_size_x * _n_layers_per_cell) + (cell_j * _n_layers_per_cell)
	for i in _n_layers_per_cell:
		n_hits += _obs_buffer[start_index+i]
		
	if n_hits > 0:
		cell.modulate = _highlighted_cell_color
	else:
		cell.modulate = _standard_cell_color
		
func _on_cell_area_entered(area:Area2D, cell_i:int, cell_j:int):
	#prints("_on_cell_area_entered", cell_i, cell_j)
	_update_obs(cell_i, cell_j, area.collision_layer, true)
	if debug_view:
		_toggle_cell(cell_i, cell_j)
	#print(_obs_buffer)

func _on_cell_area_exited(area:Area2D, cell_i:int, cell_j:int):
	#prints("_on_cell_area_exited", cell_i, cell_j)
	_update_obs(cell_i, cell_j, area.collision_layer, false)
	if debug_view:
		_toggle_cell(cell_i, cell_j)

func _on_cell_body_entered(body: Node2D, cell_i:int, cell_j:int):
	#prints("_on_cell_body_entered", cell_i, cell_j)
	_update_obs(cell_i, cell_j, body.collision_layer, true)
	if debug_view:
		_toggle_cell(cell_i, cell_j)

func _on_cell_body_exited(body: Node2D, cell_i:int, cell_j:int):
	#prints("_on_cell_body_exited", cell_i, cell_j)
	_update_obs(cell_i, cell_j, body.collision_layer, false)
	if debug_view:
		_toggle_cell(cell_i, cell_j)
           extends Node2D
class_name ISensor2D

var _obs : Array = []
var _active := false

func get_observation():
	pass
	
func activate():
	_active = true
	
func deactivate():
	_active = false

func _update_observation():
	pass
	
func reset():
	pass
               @tool
extends ISensor2D
class_name RaycastSensor2D

@export_flags_2d_physics var collision_mask := 1:
	get: return collision_mask
	set(value):
		collision_mask = value
		_update()

@export var collide_with_areas := false:
	get: return collide_with_areas
	set(value):
		collide_with_areas = value
		_update()

@export var collide_with_bodies := true:
	get: return collide_with_bodies
	set(value):
		collide_with_bodies = value
		_update()

@export var n_rays := 16.0:
	get: return n_rays
	set(value):
		n_rays = value
		_update()
	
@export_range(5,200,5.0) var ray_length := 200:
	get: return ray_length
	set(value):
		ray_length = value
		_update()
@export_range(5,360,5.0) var cone_width := 360.0:
	get: return cone_width
	set(value):
		cone_width = value
		_update()
	
@export var debug_draw := true :
	get: return debug_draw 
	set(value):
		debug_draw = value
		_update()  


var _angles = []
var rays := []

func _update():
	if Engine.is_editor_hint():
		if debug_draw:
			_spawn_nodes()
		else:
			for ray in get_children():
				if ray is RayCast2D:
					remove_child(ray)

func _ready() -> void:
	_spawn_nodes()

func _spawn_nodes():
	for ray in rays:
		ray.queue_free()
	rays = []
		
	_angles = []
	var step = cone_width / (n_rays)
	var start = step/2 - cone_width/2
	
	for i in n_rays:
		var angle = start + i * step
		var ray = RayCast2D.new()
		ray.set_target_position(Vector2(
			ray_length*cos(deg_to_rad(angle)),
			ray_length*sin(deg_to_rad(angle))
		))
		ray.set_name("node_"+str(i))
		ray.enabled  = true
		ray.collide_with_areas = collide_with_areas
		ray.collide_with_bodies = collide_with_bodies
		ray.collision_mask = collision_mask
		add_child(ray)
		rays.append(ray)
		
		
		_angles.append(start + i * step)
	

func _physics_process(delta: float) -> void:
	if self._active:
		self._obs = calculate_raycasts()
		
func get_observation() -> Array:
	if len(self._obs) == 0:
		print("obs was null, forcing raycast update")
		return self.calculate_raycasts()
	return self._obs
	

func calculate_raycasts() -> Array:
	var result = []
	for ray in rays:
		ray.force_raycast_update()
		var distance = _get_raycast_distance(ray)
		result.append(distance)
	return result

func _get_raycast_distance(ray : RayCast2D) -> float : 
	if !ray.is_colliding():
		return 0.0
		
	var distance = (global_position - ray.get_collision_point()).length()
	distance = clamp(distance, 0.0, ray_length)
	return (ray_length - distance) / ray_length
	
	
	
  RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script C   res://addons/godot_rl_agents/sensors/sensors_2d/RaycastSensor2D.gd ��������      local://PackedScene_3mt2a :         PackedScene          	         names "         RaycastSensor2D    script    n_rays    Node2D    	   variants                      �A      node_count             nodes        ��������       ����                          conn_count              conns               node_paths              editable_instances              version             RSRC              RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script           local://PackedScene_m2l1x �          PackedScene          	         names "         ExampleRaycastSensor3D    Node3D 	   Camera3D 
   transform    	   variants            �?              �?              �?��M?    ��,@      node_count             nodes        ��������       ����                      ����                    conn_count              conns               node_paths              editable_instances              version             RSRC        @tool
extends ISensor3D
class_name GridSensor3D

@export var debug_view := false:
	get: return debug_view
	set(value):
		debug_view = value
		_update()
		
@export_flags_3d_physics var detection_mask := 0:
	get: return detection_mask
	set(value):
		detection_mask = value
		_update()

@export var collide_with_areas := false:
	get: return collide_with_areas
	set(value):
		collide_with_areas = value
		_update()

@export var collide_with_bodies := false:
	# NOTE! The sensor will not detect StaticBody3D, add an area to static bodies to detect them
	get: return collide_with_bodies
	set(value):
		collide_with_bodies = value
		_update()

@export_range(0.1, 2, 0.1) var cell_width := 1.0:
	get: return cell_width
	set(value):
		cell_width = value
		_update()

@export_range(0.1, 2, 0.1) var cell_height := 1.0:
	get: return cell_height
	set(value):
		cell_height = value
		_update()	

@export_range(1, 21, 2, "or_greater") var grid_size_x := 3:
	get: return grid_size_x
	set(value):
		grid_size_x = value
		_update()

@export_range(1, 21, 2, "or_greater") var grid_size_z := 3:
	get: return grid_size_z
	set(value):
		grid_size_z = value
		_update()

var _obs_buffer: PackedFloat64Array
var _box_shape: BoxShape3D
var _collision_mapping: Dictionary
var _n_layers_per_cell: int

var _highlighted_box_material: StandardMaterial3D
var _standard_box_material: StandardMaterial3D

func get_observation():
	return _obs_buffer

func reset():
	_obs_buffer.fill(0)

func _update():
	if Engine.is_editor_hint():
		if is_node_ready():
			_spawn_nodes()	

func _ready() -> void:
	_make_materials()
	
	if Engine.is_editor_hint():	
		if get_child_count() == 0:
			_spawn_nodes()
	else:
		_spawn_nodes()
	
func _make_materials() -> void:
	if _highlighted_box_material != null and _standard_box_material != null:
		return
		
	_standard_box_material = StandardMaterial3D.new()
	_standard_box_material.set_transparency(1) # ALPHA
	_standard_box_material.albedo_color = Color(100.0/255.0, 100.0/255.0, 100.0/255.0, 100.0/255.0)
	
	_highlighted_box_material = StandardMaterial3D.new()
	_highlighted_box_material.set_transparency(1) # ALPHA
	_highlighted_box_material.albedo_color = Color(255.0/255.0, 100.0/255.0, 100.0/255.0, 100.0/255.0)

func _get_collision_mapping() -> Dictionary:
	# defines which layer is mapped to which cell obs index
	var total_bits = 0
	var collision_mapping = {} 
	for i in 32:
		var bit_mask = 2**i
		if (detection_mask & bit_mask) > 0:
			collision_mapping[i] = total_bits
			total_bits += 1
		
	return collision_mapping

func _spawn_nodes():
	for cell in get_children():
		cell.name = "_%s" % cell.name # Otherwise naming below will fail
		cell.queue_free()
	
	_collision_mapping = _get_collision_mapping()
	#prints("collision_mapping", _collision_mapping, len(_collision_mapping))
	# allocate memory for the observations
	_n_layers_per_cell = len(_collision_mapping)
	_obs_buffer = PackedFloat64Array()
	_obs_buffer.resize(grid_size_x*grid_size_z*_n_layers_per_cell)
	_obs_buffer.fill(0)
	#prints(len(_obs_buffer), _obs_buffer )
	
	_box_shape = BoxShape3D.new()
	_box_shape.set_size(Vector3(cell_width, cell_height, cell_width))
	
	var shift := Vector3(
		-(grid_size_x/2)*cell_width,
		0,
		-(grid_size_z/2)*cell_width,
	)
	
	for i in grid_size_x:
		for j in grid_size_z:
			var cell_position =  Vector3(i*cell_width, 0.0, j*cell_width) + shift
			_create_cell(i, j, cell_position)
		

func _create_cell(i:int, j:int, position: Vector3):
	var cell : = Area3D.new()
	cell.position = position
	cell.name = "GridCell %s %s" %[i, j]
	
	if collide_with_areas:
		cell.area_entered.connect(_on_cell_area_entered.bind(i, j))
		cell.area_exited.connect(_on_cell_area_exited.bind(i, j))
		
	if collide_with_bodies:
		cell.body_entered.connect(_on_cell_body_entered.bind(i, j))
		cell.body_exited.connect(_on_cell_body_exited.bind(i, j))
		
#		cell.body_shape_entered.connect(_on_cell_body_shape_entered.bind(i, j))
#		cell.body_shape_exited.connect(_on_cell_body_shape_exited.bind(i, j))
	
	cell.collision_layer = 0
	cell.collision_mask = detection_mask
	cell.monitorable = true
	cell.input_ray_pickable = false
	add_child(cell)
	cell.set_owner(get_tree().edited_scene_root)

	var col_shape : = CollisionShape3D.new()
	col_shape.shape = _box_shape
	col_shape.name = "CollisionShape3D"
	cell.add_child(col_shape)
	col_shape.set_owner(get_tree().edited_scene_root)
	
	if debug_view:
		var box = MeshInstance3D.new()
		box.name = "MeshInstance3D"
		var box_mesh = BoxMesh.new()
		
		box_mesh.set_size(Vector3(cell_width, cell_height, cell_width))
		box_mesh.material = _standard_box_material
		
		box.mesh = box_mesh
		cell.add_child(box)
		box.set_owner(get_tree().edited_scene_root)

func _update_obs(cell_i:int, cell_j:int, collision_layer:int, entered: bool):
	for key in _collision_mapping:
		var bit_mask = 2**key
		if (collision_layer & bit_mask) > 0:
			var collison_map_index = _collision_mapping[key]
			
			var obs_index = (
							(cell_i * grid_size_x * _n_layers_per_cell) + 
							(cell_j * _n_layers_per_cell) + 
							collison_map_index
							)
			#prints(obs_index, cell_i, cell_j)
			if entered:
				_obs_buffer[obs_index] += 1
			else:
				_obs_buffer[obs_index] -= 1

func _toggle_cell(cell_i:int, cell_j:int):
	var cell = get_node_or_null("GridCell %s %s" %[cell_i, cell_j])
	
	if cell == null:
		print("cell not found, returning")
		
	var n_hits = 0
	var start_index = (cell_i * grid_size_x * _n_layers_per_cell) + (cell_j * _n_layers_per_cell)
	for i in _n_layers_per_cell:
		n_hits += _obs_buffer[start_index+i]
		
	var cell_mesh = cell.get_node_or_null("MeshInstance3D")
	if n_hits > 0:
		cell_mesh.mesh.material = _highlighted_box_material
	else:
		cell_mesh.mesh.material = _standard_box_material
		
func _on_cell_area_entered(area:Area3D, cell_i:int, cell_j:int):
	#prints("_on_cell_area_entered", cell_i, cell_j)
	_update_obs(cell_i, cell_j, area.collision_layer, true)
	if debug_view:
		_toggle_cell(cell_i, cell_j)
	#print(_obs_buffer)

func _on_cell_area_exited(area:Area3D, cell_i:int, cell_j:int):
	#prints("_on_cell_area_exited", cell_i, cell_j)
	_update_obs(cell_i, cell_j, area.collision_layer, false)
	if debug_view:
		_toggle_cell(cell_i, cell_j)

func _on_cell_body_entered(body: Node3D, cell_i:int, cell_j:int):
	#prints("_on_cell_body_entered", cell_i, cell_j)
	_update_obs(cell_i, cell_j, body.collision_layer, true)
	if debug_view:
		_toggle_cell(cell_i, cell_j)

func _on_cell_body_exited(body: Node3D, cell_i:int, cell_j:int):
	#prints("_on_cell_body_exited", cell_i, cell_j)
	_update_obs(cell_i, cell_j, body.collision_layer, false)
	if debug_view:
		_toggle_cell(cell_i, cell_j)
           extends Node3D
class_name ISensor3D

var _obs : Array = []
var _active := false

func get_observation():
	pass
	
func activate():
	_active = true
	
func deactivate():
	_active = false

func _update_observation():
	pass
	
func reset():
	pass
               @tool
extends ISensor3D
class_name RayCastSensor3D
@export_flags_3d_physics var collision_mask = 1:
	get: return collision_mask
	set(value):
		collision_mask = value
		_update()
@export_flags_3d_physics var boolean_class_mask = 1:
	get: return boolean_class_mask
	set(value):
		boolean_class_mask = value
		_update()

@export var n_rays_width := 6.0:
	get: return n_rays_width
	set(value):
		n_rays_width = value
		_update()
	
@export var n_rays_height := 6.0:
	get: return n_rays_height
	set(value):
		n_rays_height = value
		_update()

@export var ray_length := 10.0:
	get: return ray_length
	set(value):
		ray_length = value
		_update()
		
@export var cone_width := 60.0:
	get: return cone_width
	set(value):
		cone_width = value
		_update()
		
@export var cone_height := 60.0:
	get: return cone_height
	set(value):
		cone_height = value
		_update()

@export var collide_with_areas := false:
	get: return collide_with_areas
	set(value):
		collide_with_areas = value
		_update()
		
@export var collide_with_bodies := true:
	get: return collide_with_bodies
	set(value):
		collide_with_bodies = value
		_update()

@export var class_sensor := false
		
var rays := []
var geo = null

func _update():
	if Engine.is_editor_hint():
		if is_node_ready():
			_spawn_nodes()	

func _ready() -> void:
	if Engine.is_editor_hint():	
		if get_child_count() == 0:
			_spawn_nodes()
	else:
		_spawn_nodes()

func _spawn_nodes():
	print("spawning nodes")
	for ray in get_children():
		ray.queue_free()
	if geo:
		geo.clear()
	#$Lines.remove_points()
	rays = []
	
	var horizontal_step = cone_width / (n_rays_width)
	var vertical_step = cone_height / (n_rays_height)
	
	var horizontal_start = horizontal_step/2 - cone_width/2
	var vertical_start = vertical_step/2 - cone_height/2   

	var points = []
	
	for i in n_rays_width:
		for j in n_rays_height:
			var angle_w = horizontal_start + i * horizontal_step
			var angle_h = vertical_start + j * vertical_step
			#angle_h = 0.0
			var ray = RayCast3D.new()
			var cast_to = to_spherical_coords(ray_length, angle_w, angle_h)
			ray.set_target_position(cast_to)

			points.append(cast_to)
			
			ray.set_name("node_"+str(i)+" "+str(j))
			ray.enabled  = true
			ray.collide_with_bodies = collide_with_bodies
			ray.collide_with_areas = collide_with_areas
			ray.collision_mask = collision_mask
			add_child(ray)
			ray.set_owner(get_tree().edited_scene_root)
			rays.append(ray)
			ray.force_raycast_update()
			
#    if Engine.editor_hint:
#        _create_debug_lines(points)
		
func _create_debug_lines(points):
	if not geo: 
		geo = ImmediateMesh.new()
		add_child(geo)
		
	geo.clear()
	geo.begin(Mesh.PRIMITIVE_LINES)
	for point in points:
		geo.set_color(Color.AQUA)
		geo.add_vertex(Vector3.ZERO)
		geo.add_vertex(point)
	geo.end()

func display():
	if geo:
		geo.display()
	
func to_spherical_coords(r, inc, azimuth) -> Vector3:
	return Vector3(
		r*sin(deg_to_rad(inc))*cos(deg_to_rad(azimuth)),
		r*sin(deg_to_rad(azimuth)),
		r*cos(deg_to_rad(inc))*cos(deg_to_rad(azimuth))       
	)
	
func get_observation() -> Array:
	return self.calculate_raycasts()

func calculate_raycasts() -> Array:
	var result = []
	for ray in rays:
		ray.set_enabled(true)
		ray.force_raycast_update()
		var distance = _get_raycast_distance(ray)

		result.append(distance)
		if class_sensor:
			var hit_class: float = 0 
			if ray.get_collider():
				var hit_collision_layer = ray.get_collider().collision_layer
				hit_collision_layer = hit_collision_layer & collision_mask
				hit_class = (hit_collision_layer & boolean_class_mask) > 0
			result.append(float(hit_class))
		ray.set_enabled(false)
	return result

func _get_raycast_distance(ray : RayCast3D) -> float : 
	if !ray.is_colliding():
		return 0.0
		
	var distance = (global_transform.origin - ray.get_collision_point()).length()
	distance = clamp(distance, 0.0, ray_length)
	return (ray_length - distance) / ray_length
     RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script C   res://addons/godot_rl_agents/sensors/sensors_3d/RaycastSensor3D.gd ��������      local://PackedScene_73xwb :         PackedScene          	         names "         RaycastSensor3D    script    n_rays_width    n_rays_height    ray_length    Node3D 	   node_1 0    target_position 
   RayCast3D 	   node_1 1 	   node_2 0 	   node_2 1 	   node_3 0 	   node_3 1    	   variants    
                  �@      @     0A   ����i56�~�(A   ����i56@~�(A   ���?i56�~�(A   ���?i56@~�(A   T�@i56��A   T�@i56@�A      node_count             nodes     E   ��������       ����                                              ����                        	   ����                        
   ����                           ����                           ����                           ����      	             conn_count              conns               node_paths              editable_instances              version             RSRC               extends Node3D
class_name RGBCameraSensor3D
var camera_pixels = null

@onready var camera_texture := $Control/TextureRect/CameraTexture as Sprite2D
@onready var sub_viewport := $SubViewport as SubViewport


func get_camera_pixel_encoding():
	return camera_texture.get_texture().get_image().get_data().hex_encode()


func get_camera_shape() -> Array:
	assert(
		sub_viewport.size.x >= 36 and sub_viewport.size.y >= 36,
		"SubViewport size must be 36x36 or larger."
	)
	if sub_viewport.transparent_bg:
		return [4, sub_viewport.size.y, sub_viewport.size.x]
	else:
		return [3, sub_viewport.size.y, sub_viewport.size.x]
       RSRC                    PackedScene            ��������                                                  ..    SubViewport 	   Camera3D    resource_local_to_scene    resource_name    viewport_path    script 	   _bundled       Script E   res://addons/godot_rl_agents/sensors/sensors_3d/RGBCameraSensor3D.gd ��������      local://ViewportTexture_y7asi �         local://PackedScene_e66wv �         ViewportTexture                         PackedScene          	         names "         RGBCameraSensor3D    script    Node3D    RemoteTransform3D    remote_path    SubViewport    size    render_target_update_mode 	   Camera3D    near    Control    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    TextureRect    offset_left    offset_top    offset_right    offset_bottom    scale    color 
   ColorRect    CameraTexture    texture    offset    flip_v 	   Sprite2D    	   variants                                 -                       ?           �?                  �D    �D    @�D     
D
      A   A   �� <�� <�� <  �?          
     A  A            node_count             nodes     [   ��������       ����                            ����                           ����                                ����   	                  
   
   ����                                                        ����            	      
                                            ����                               conn_count              conns               node_paths              editable_instances              version             RSRC             @tool
extends EditorPlugin

func _enter_tree():
	# Initialization of the plugin goes here.
	# Add the new type with a name, a parent type, a script and an icon.
	add_custom_type("Sync", "Node", preload("sync.gd"), preload("icon.png"))
	#add_custom_type("RaycastSensor2D2", "Node", preload("raycast_sensor_2d.gd"), preload("icon.png"))

func _exit_tree():
	# Clean-up of the plugin goes here.
	# Always remember to remove it from the engine when deactivated.
	remove_custom_type("Sync")
	#remove_custom_type("RaycastSensor2D2")
 GST2            ����                        �   RIFF�   WEBPVP8L�   /��`�m�~��~�6�?�1g m�����cE���\�Q@ �+����SQ��88�a���;[�w�
#�m�tPV����"�?X	�;`&�� x�uHǅ��Fi�^��(�V��<ǲbkf���X�pM�4��w����J��^���            [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://brsrilg12b821"
path="res://.godot/imported/icon.png-45a871b53434e556222f5901d598ab34.ctex"
metadata={
"vram_texture": false
}
                extends Node
# --fixed-fps 2000 --disable-render-loop



enum ControlModes {HUMAN, TRAINING, ONNX_INFERENCE}
@export var control_mode: ControlModes = ControlModes.ONNX_INFERENCE

@export_category("environment settings")
## Physics speed up
@export_range(1, 10, 1, "or_greater") var speed_up = 1

@export_category("agent settings")
## Onnx Model relative Path. (MUST be in the same folder with executable or index.html) for example: model_name.onnx
@export var onnx_model_path := ""
## How many times action should be repeated after agent chose action.
@export_range(1, 10, 1, "or_greater") var action_repeat := 8

## Amount of agents on the scene that uses this model
@export_range(1, 10, 1, "or_greater") var agents_number := 1

var observations_number = 1
var actions_number = 1


@onready var start_time = Time.get_ticks_msec()

const MAJOR_VERSION := "0"
const MINOR_VERSION := "3" 
const DEFAULT_PORT := "11008"
const DEFAULT_SEED := "1"
var stream : StreamPeerTCP = null
var connected = false
var message_center
var should_connect = true
var agents
var need_to_send_obs = false
var args = null
var initialized = false
var just_reset = false
var onnx_model = null
var n_action_steps = 0

var _action_space : Dictionary # Amount of observations (sensors) that agent will use
var _obs_space : Dictionary # Amount of observations (sensors) that agent will use

var _js_cb_Exec1 = 0;
var _js_cb_Err1 = 0;

# Called when the node enters the scene tree for the first time.

func _ready():
	print("Plugin properties:type = %s\naction_repeat = %d\nspeed_up = %d\nmodel path = %s\nagents_number = %d" %[ControlModes.keys()[control_mode],action_repeat, speed_up, onnx_model_path, agents_number])	
	await get_tree().root.ready
	get_tree().set_pause(true) 
	_initialize()
	actions_number=_action_space.size()
	observations_number=_obs_space["obs"]["size"][0]
	print("_action_space.size()   ",actions_number)
	print("_obs_space.size()   ",observations_number)
	if OS.has_feature('web'):
		var externalator = JavaScriptBridge.get_interface("externalator")
		_js_cb_Exec1 = JavaScriptBridge.create_callback(cbExec1)
		_js_cb_Err1 = JavaScriptBridge.create_callback(cbErr1)
		externalator.addGodotFunction('cbExec1',_js_cb_Exec1)
		externalator.addGodotFunction('cbErr1',_js_cb_Err1)
		#var s_m = "'./RingPong_100K.onnx'"
		
		_get_agents()
		var s_m = "'./%s'" % onnx_model_path
		var load_par = "load(%s,%d, %d);" %[s_m, observations_number, agents_number]
		#JavaScriptBridge.eval("load("+s_m+",4,3);")
		JavaScriptBridge.eval(load_par)
		
		#load('./m_BallChase-1M.onnx',21,16); // observation, models
	#await get_tree().create_timer(1.0).timeout
	get_tree().set_pause(false) 

func cbExec1(args1):
	var actions = []
	#print("ARGS:", args)

	for i in range (agents_number):# TBD should be an automatic variable
		var obs_cb : Array =  []# TODO here should be actual number of action array
		for j in range (actions_number):
			if not args1[0][i]: return
			obs_cb.append(args1[0][i][j])
		obs_cb = clamp_array(obs_cb, -1.0, 1.0)
		var action_dict = _extract_action_dict(obs_cb)

		actions.append(action_dict)
	_set_agent_actions(actions)
	 
	need_to_send_obs = true
	get_tree().set_pause(false) 
	_reset_agents_if_done()	 


func cbErr1(args):	
	print("cbErr1 ",args)

func _initialize():
	_get_agents()
	_obs_space = agents[0].get_obs_space()
	_action_space = agents[0].get_action_space()
	args = _get_args()
	Engine.physics_ticks_per_second = _get_speedup() * 60 # Replace with function body.
	Engine.time_scale = _get_speedup() * 1.0
	prints("physics ticks", Engine.physics_ticks_per_second, Engine.time_scale, _get_speedup(), speed_up)
	
	"""
	# Run inference if onnx model path is set, otherwise wait for server connection
	var run_onnx_model_inference : bool = onnx_model_path != ""
	if OS.has_feature('web'):# simple test for web
		#_set_heuristic("human") 
		_set_heuristic("model") 
	else:
		if run_onnx_model_inference:
			#assert(FileAccess.file_exists(onnx_model_path), "Onnx Model Path set on Sync node does not exist: " + onnx_model_path)
			#onnx_model = ONNXModel.new(onnx_model_path, 1)
			_set_heuristic("model")
		else:		
			connected = connect_to_server()
			if connected:
				_set_heuristic("model")
				_handshake()
				_send_env_info()
			else:
				_set_heuristic("human")  
	"""
	if ControlModes.keys()[control_mode] == "HUMAN":
		_set_heuristic("human") 
	elif ControlModes.keys()[control_mode] == "ONNX_INFERENCE":
		if OS.has_feature('web'):# simple test for web
			_set_heuristic("model") 
		else:
			connected = connect_to_server()
			if connected:
				_set_heuristic("model")
				_handshake()
				_send_env_info()
			else:
				_set_heuristic("human")  
	elif ControlModes.keys()[control_mode] == "TRAINING":
		if OS.has_feature('web'):
			_set_heuristic("human") 
		else:
			connected = connect_to_server()
			if connected:
				_set_heuristic("model")
				_handshake()
				_send_env_info()
			else:
				_set_heuristic("human")  
	
	_set_seed()
	_set_action_repeat()
	initialized = true  

func _physics_process(delta): 
	# two modes, human control, agent control
	# pause tree, send obs, get actions, set actions, unpause tree
	if n_action_steps % action_repeat != 0:
		n_action_steps += 1
		return

	n_action_steps += 1
	
	if OS.has_feature('web'):# simple test for web

		var obs : Array = _get_obs_from_agents()		
		var obs_new = []
		for i in obs:
			obs_new.append(i["obs"])
		#print(obs_new)
		#JavaScriptBridge.eval("exec2("+sn+",0);")
		JavaScriptBridge.eval("exec2("+str(obs_new)+",0);")		
			
	elif connected:
		get_tree().set_pause(true) 
		
		if just_reset:
			just_reset = false
			var obs = _get_obs_from_agents()
		
			var reply = {
				"type": "reset",
				"obs": obs
			}
			_send_dict_as_json_message(reply)
			# this should go straight to getting the action and setting it checked the agent, no need to perform one phyics tick
			get_tree().set_pause(false) 
			return
		
		if need_to_send_obs:
			need_to_send_obs = false
			var reward = _get_reward_from_agents()
			var done = _get_done_from_agents()
			#_reset_agents_if_done() # this ensures the new observation is from the next env instance : NEEDS REFACTOR
			
			var obs = _get_obs_from_agents()
			
			var reply = {
				"type": "step",
				"obs": obs,
				"reward": reward,
				"done": done
			}
			_send_dict_as_json_message(reply)
		
		var handled = handle_message()
	
	elif onnx_model != null:
		var obs : Array = _get_obs_from_agents()
	
		var actions = []
		#print(len(obs))
		for o in obs:
			#print(o["obs"],len(o["obs"]))# len o["obs"] 21
			var action = onnx_model.run_inference(o["obs"], 1.0)
			#print(action)
			#print(action["output"])
			action["output"] = clamp_array(action["output"], -1.0, 1.0)
			#print(action["output"])
			var action_dict = _extract_action_dict(action["output"])
			actions.append(action_dict)
		#print(actions)
		
		_set_agent_actions(actions) 
		need_to_send_obs = true
		get_tree().set_pause(false) 
		_reset_agents_if_done()	
	
	else:
		_reset_agents_if_done()	

func _extract_action_dict(action_array: Array):
	var index = 0
	var result = {}
	#print(_action_space.keys())
	for key in _action_space.keys():
		var size = _action_space[key]["size"]
		if _action_space[key]["action_type"] == "discrete":
			result[key] = round(action_array[index])
		else:
			result[key] = action_array.slice(index,index+size)
		index += size
		
	return result

func _get_agents():
	agents = get_tree().get_nodes_in_group("AGENT")

func _set_heuristic(heuristic):
	for agent in agents:
		agent.set_heuristic(heuristic)

func _handshake():
	print("performing handshake")
	
	var json_dict = _get_dict_json_message()
	assert(json_dict["type"] == "handshake")
	var major_version = json_dict["major_version"]
	var minor_version = json_dict["minor_version"]
	if major_version != MAJOR_VERSION:
		print("WARNING: major verison mismatch ", major_version, " ", MAJOR_VERSION)  
	if minor_version != MINOR_VERSION:
		print("WARNING: minor verison mismatch ", minor_version, " ", MINOR_VERSION)
		
	print("handshake complete")

func _get_dict_json_message():
	# returns a dictionary from of the most recent message
	# this is not waiting
	while stream.get_available_bytes() == 0:
		stream.poll()
		if stream.get_status() != 2:
			print("server disconnected status, closing")
			get_tree().quit()
			return null

		OS.delay_usec(10)
		
	var message = stream.get_string()
	var json_data = JSON.parse_string(message)
	
	return json_data

func _send_dict_as_json_message(dict):
	stream.put_string(JSON.stringify(dict))

func _send_env_info():
	var json_dict = _get_dict_json_message()
	assert(json_dict["type"] == "env_info")

		
	var message = {
		"type" : "env_info",
		"observation_space": _obs_space,
		"action_space":_action_space,
		"n_agents": len(agents)
		}
	_send_dict_as_json_message(message)

func connect_to_server():
	print("Waiting for one second to allow server to start")
	OS.delay_msec(1000)
	print("trying to connect to server")
	stream = StreamPeerTCP.new()
	
	# "localhost" was not working on windows VM, had to use the IP
	var ip = "127.0.0.1"
	var port = _get_port()
	var connect = stream.connect_to_host(ip, port)
	stream.set_no_delay(true) # TODO check if this improves performance or not
	stream.poll()
	# Fetch the status until it is either connected (2) or failed to connect (3)
	while stream.get_status() < 2:
		stream.poll()
	return stream.get_status() == 2

func _get_args():
	print("getting command line arguments")
	var arguments = {}
	for argument in OS.get_cmdline_args():
		print(argument)
		if argument.find("=") > -1:
			var key_value = argument.split("=")
			arguments[key_value[0].lstrip("--")] = key_value[1]
		else:
			# Options without an argument will be present in the dictionary,
			# with the value set to an empty string.
			arguments[argument.lstrip("--")] = ""

	return arguments   

func _get_speedup():
	print(args)
	return args.get("speedup", str(speed_up)).to_int()

func _get_port():    
	return args.get("port", DEFAULT_PORT).to_int()

func _set_seed():
	var _seed = args.get("env_seed", DEFAULT_SEED).to_int()
	seed(_seed)

func _set_action_repeat():
	action_repeat = args.get("action_repeat", str(action_repeat)).to_int()
	
func disconnect_from_server():
	stream.disconnect_from_host()



func handle_message() -> bool:
	# get json message: reset, step, close
	var message = _get_dict_json_message()
	if message["type"] == "close":
		print("received close message, closing game")
		get_tree().quit()
		get_tree().set_pause(false) 
		return true
		
	if message["type"] == "reset":
		print("resetting all agents")
		_reset_all_agents()
		just_reset = true
		get_tree().set_pause(false) 
		#print("resetting forcing draw")
#        RenderingServer.force_draw()
#        var obs = _get_obs_from_agents()
#        print("obs ", obs)
#        var reply = {
#            "type": "reset",
#            "obs": obs
#        }
#        _send_dict_as_json_message(reply)   
		return true
		
	if message["type"] == "call":
		var method = message["method"]
		var returns = _call_method_on_agents(method)
		var reply = {
			"type": "call",
			"returns": returns
		}
		print("calling method from Python")
		_send_dict_as_json_message(reply)   
		return handle_message()
	
	if message["type"] == "action":
		var action = message["action"]
		_set_agent_actions(action) 
		need_to_send_obs = true
		get_tree().set_pause(false) 
		return true
		
	print("message was not handled")
	return false

func _call_method_on_agents(method):
	var returns = []
	for agent in agents:
		returns.append(agent.call(method))
		
	return returns


func _reset_agents_if_done():
	for agent in agents:
		if agent.get_done(): 
			agent.set_done_false()

func _reset_all_agents():
	for agent in agents:
		agent.needs_reset = true
		#agent.reset()   

func _get_obs_from_agents():
	var obs = []
	for agent in agents:
		obs.append(agent.get_obs())

	return obs
	
func _get_reward_from_agents():
	var rewards = [] 
	for agent in agents:
		rewards.append(agent.get_reward())
		agent.zero_reward()
	return rewards    
	
func _get_done_from_agents():
	var dones = [] 
	for agent in agents:
		var done = agent.get_done()
		if done: agent.set_done_false()
		dones.append(done)
	return dones    
	
func _set_agent_actions(actions):
	for i in range(len(actions)):
		agents[i].set_action(actions[i])
	
func clamp_array(arr : Array, min:float, max:float):
	var output : Array = []
	for a in arr:
		output.append(clamp(a, min, max))
	return output


     extends Node
# --fixed-fps 2000 --disable-render-loop



enum ControlModes {HUMAN, TRAINING, ONNX_INFERENCE}
@export var control_mode: ControlModes = ControlModes.ONNX_INFERENCE

@export_category("environment settings")
## Physics speed up
@export_range(1, 10, 1, "or_greater") var speed_up = 1

@export_category("agent settings")
## Onnx Model relative Path. (MUST be in the same folder with executable or index.html) for example: model_name.onnx
@export var onnx_model_path := ""
## How many times action should be repeated after agent chose action.
@export_range(1, 10, 1, "or_greater") var action_repeat := 8

## Amount of agents on the scene that uses this model
@export_range(1, 10, 1, "or_greater") var agents_number := 1



@onready var start_time = Time.get_ticks_msec()

const MAJOR_VERSION := "0"
const MINOR_VERSION := "3" 
const DEFAULT_PORT := "11008"
const DEFAULT_SEED := "1"
var stream : StreamPeerTCP = null
var connected = false
var message_center
var should_connect = true
var agents
var need_to_send_obs = false
var args = null
var initialized = false
var just_reset = false
var onnx_model = null
var n_action_steps = 0

var _action_space : Dictionary # Amount of observations (sensors) that agent will use
var _obs_space : Dictionary # Amount of observations (sensors) that agent will use

var _js_cb_Exec1 = 0;
var _js_cb_Err1 = 0;

# Called when the node enters the scene tree for the first time.

func _ready():
	print("Plugin properties:type = %s\naction_repeat = %d\nspeed_up = %d\nmodel path = %s\nagents_number = %d" %[ControlModes.keys()[control_mode],action_repeat, speed_up, onnx_model_path, agents_number])	
	if OS.has_feature('web'):
		var externalator = JavaScriptBridge.get_interface("externalator")
		_js_cb_Exec1 = JavaScriptBridge.create_callback(cbExec1)
		_js_cb_Err1 = JavaScriptBridge.create_callback(cbErr1)
		externalator.addGodotFunction('cbExec1',_js_cb_Exec1)
		externalator.addGodotFunction('cbErr1',_js_cb_Err1)
		#var s_m = "'./RingPong_100K.onnx'"
		
		_get_agents()
		var s_m = "'./%s'" % onnx_model_path
		print("_obs_space.size()   ",_obs_space.size())
		var load_par = "load(%s,%d, %d);" %[s_m, 4, agents_number]
		#JavaScriptBridge.eval("load("+s_m+",4,3);")
		JavaScriptBridge.eval(load_par)
		
		#load('./m_BallChase-1M.onnx',21,16); // observation, models

	await get_tree().root.ready
	get_tree().set_pause(true) 
	_initialize()
	#await get_tree().create_timer(1.0).timeout
	get_tree().set_pause(false) 

func cbExec1(args1):
	var actions = []
	#print("ARGS:", args)

	for i in range (agents_number):# TBD should be an automatic variable
		var obs_cb : Array =  []# TODO here should be actual number of action array
		for j in range (_action_space.size()):
			if not args1[0][i]: return
			obs_cb.append(args1[0][i][j])
		obs_cb = clamp_array(obs_cb, -1.0, 1.0)
		var action_dict = _extract_action_dict(obs_cb)

		actions.append(action_dict)
	_set_agent_actions(actions)
	 
	need_to_send_obs = true
	get_tree().set_pause(false) 
	_reset_agents_if_done()	 


func cbErr1(args):	
	print("cbErr1 ",args)

func _initialize():
	_get_agents()
	_obs_space = agents[0].get_obs_space()
	_action_space = agents[0].get_action_space()
	args = _get_args()
	Engine.physics_ticks_per_second = _get_speedup() * 60 # Replace with function body.
	Engine.time_scale = _get_speedup() * 1.0
	prints("physics ticks", Engine.physics_ticks_per_second, Engine.time_scale, _get_speedup(), speed_up)
	
	"""
	# Run inference if onnx model path is set, otherwise wait for server connection
	var run_onnx_model_inference : bool = onnx_model_path != ""
	if OS.has_feature('web'):# simple test for web
		#_set_heuristic("human") 
		_set_heuristic("model") 
	else:
		if run_onnx_model_inference:
			#assert(FileAccess.file_exists(onnx_model_path), "Onnx Model Path set on Sync node does not exist: " + onnx_model_path)
			#onnx_model = ONNXModel.new(onnx_model_path, 1)
			_set_heuristic("model")
		else:		
			connected = connect_to_server()
			if connected:
				_set_heuristic("model")
				_handshake()
				_send_env_info()
			else:
				_set_heuristic("human")  
	"""
	if ControlModes.keys()[control_mode] == "HUMAN":
		_set_heuristic("human") 
	elif ControlModes.keys()[control_mode] == "ONNX_INFERENCE":
		if OS.has_feature('web'):# simple test for web
			_set_heuristic("model") 
		else:
			connected = connect_to_server()
			if connected:
				_set_heuristic("model")
				_handshake()
				_send_env_info()
			else:
				_set_heuristic("human")  
	elif ControlModes.keys()[control_mode] == "TRAINING":
		if OS.has_feature('web'):
			_set_heuristic("human") 
		else:
			connected = connect_to_server()
			if connected:
				_set_heuristic("model")
				_handshake()
				_send_env_info()
			else:
				_set_heuristic("human")  
	
	_set_seed()
	_set_action_repeat()
	initialized = true  

func _physics_process(delta): 
	# two modes, human control, agent control
	# pause tree, send obs, get actions, set actions, unpause tree
	if n_action_steps % action_repeat != 0:
		n_action_steps += 1
		return

	n_action_steps += 1
	
	if OS.has_feature('web'):# simple test for web

		var obs : Array = _get_obs_from_agents()		
		var obs_new = []
		for i in obs:
			obs_new.append(i["obs"])
		#print(obs_new)
		#JavaScriptBridge.eval("exec2("+sn+",0);")
		JavaScriptBridge.eval("exec2("+str(obs_new)+",0);")		
			
	elif connected:
		get_tree().set_pause(true) 
		
		if just_reset:
			just_reset = false
			var obs = _get_obs_from_agents()
		
			var reply = {
				"type": "reset",
				"obs": obs
			}
			_send_dict_as_json_message(reply)
			# this should go straight to getting the action and setting it checked the agent, no need to perform one phyics tick
			get_tree().set_pause(false) 
			return
		
		if need_to_send_obs:
			need_to_send_obs = false
			var reward = _get_reward_from_agents()
			var done = _get_done_from_agents()
			#_reset_agents_if_done() # this ensures the new observation is from the next env instance : NEEDS REFACTOR
			
			var obs = _get_obs_from_agents()
			
			var reply = {
				"type": "step",
				"obs": obs,
				"reward": reward,
				"done": done
			}
			_send_dict_as_json_message(reply)
		
		var handled = handle_message()
	
	elif onnx_model != null:
		var obs : Array = _get_obs_from_agents()
	
		var actions = []
		#print(len(obs))
		for o in obs:
			#print(o["obs"],len(o["obs"]))# len o["obs"] 21
			var action = onnx_model.run_inference(o["obs"], 1.0)
			#print(action)
			#print(action["output"])
			action["output"] = clamp_array(action["output"], -1.0, 1.0)
			#print(action["output"])
			var action_dict = _extract_action_dict(action["output"])
			actions.append(action_dict)
		#print(actions)
		
		_set_agent_actions(actions) 
		need_to_send_obs = true
		get_tree().set_pause(false) 
		_reset_agents_if_done()	
	
	else:
		_reset_agents_if_done()	

func _extract_action_dict(action_array: Array):
	var index = 0
	var result = {}
	#print(_action_space.keys())
	for key in _action_space.keys():
		var size = _action_space[key]["size"]
		if _action_space[key]["action_type"] == "discrete":
			result[key] = round(action_array[index])
		else:
			result[key] = action_array.slice(index,index+size)
		index += size
		
	return result

func _get_agents():
	agents = get_tree().get_nodes_in_group("AGENT")

func _set_heuristic(heuristic):
	for agent in agents:
		agent.set_heuristic(heuristic)

func _handshake():
	print("performing handshake")
	
	var json_dict = _get_dict_json_message()
	assert(json_dict["type"] == "handshake")
	var major_version = json_dict["major_version"]
	var minor_version = json_dict["minor_version"]
	if major_version != MAJOR_VERSION:
		print("WARNING: major verison mismatch ", major_version, " ", MAJOR_VERSION)  
	if minor_version != MINOR_VERSION:
		print("WARNING: minor verison mismatch ", minor_version, " ", MINOR_VERSION)
		
	print("handshake complete")

func _get_dict_json_message():
	# returns a dictionary from of the most recent message
	# this is not waiting
	while stream.get_available_bytes() == 0:
		stream.poll()
		if stream.get_status() != 2:
			print("server disconnected status, closing")
			get_tree().quit()
			return null

		OS.delay_usec(10)
		
	var message = stream.get_string()
	var json_data = JSON.parse_string(message)
	
	return json_data

func _send_dict_as_json_message(dict):
	stream.put_string(JSON.stringify(dict))

func _send_env_info():
	var json_dict = _get_dict_json_message()
	assert(json_dict["type"] == "env_info")

		
	var message = {
		"type" : "env_info",
		"observation_space": _obs_space,
		"action_space":_action_space,
		"n_agents": len(agents)
		}
	_send_dict_as_json_message(message)

func connect_to_server():
	print("Waiting for one second to allow server to start")
	OS.delay_msec(1000)
	print("trying to connect to server")
	stream = StreamPeerTCP.new()
	
	# "localhost" was not working on windows VM, had to use the IP
	var ip = "127.0.0.1"
	var port = _get_port()
	var connect = stream.connect_to_host(ip, port)
	stream.set_no_delay(true) # TODO check if this improves performance or not
	stream.poll()
	# Fetch the status until it is either connected (2) or failed to connect (3)
	while stream.get_status() < 2:
		stream.poll()
	return stream.get_status() == 2

func _get_args():
	print("getting command line arguments")
	var arguments = {}
	for argument in OS.get_cmdline_args():
		print(argument)
		if argument.find("=") > -1:
			var key_value = argument.split("=")
			arguments[key_value[0].lstrip("--")] = key_value[1]
		else:
			# Options without an argument will be present in the dictionary,
			# with the value set to an empty string.
			arguments[argument.lstrip("--")] = ""

	return arguments   

func _get_speedup():
	print(args)
	return args.get("speedup", str(speed_up)).to_int()

func _get_port():    
	return args.get("port", DEFAULT_PORT).to_int()

func _set_seed():
	var _seed = args.get("env_seed", DEFAULT_SEED).to_int()
	seed(_seed)

func _set_action_repeat():
	action_repeat = args.get("action_repeat", str(action_repeat)).to_int()
	
func disconnect_from_server():
	stream.disconnect_from_host()



func handle_message() -> bool:
	# get json message: reset, step, close
	var message = _get_dict_json_message()
	if message["type"] == "close":
		print("received close message, closing game")
		get_tree().quit()
		get_tree().set_pause(false) 
		return true
		
	if message["type"] == "reset":
		print("resetting all agents")
		_reset_all_agents()
		just_reset = true
		get_tree().set_pause(false) 
		#print("resetting forcing draw")
#        RenderingServer.force_draw()
#        var obs = _get_obs_from_agents()
#        print("obs ", obs)
#        var reply = {
#            "type": "reset",
#            "obs": obs
#        }
#        _send_dict_as_json_message(reply)   
		return true
		
	if message["type"] == "call":
		var method = message["method"]
		var returns = _call_method_on_agents(method)
		var reply = {
			"type": "call",
			"returns": returns
		}
		print("calling method from Python")
		_send_dict_as_json_message(reply)   
		return handle_message()
	
	if message["type"] == "action":
		var action = message["action"]
		_set_agent_actions(action) 
		need_to_send_obs = true
		get_tree().set_pause(false) 
		return true
		
	print("message was not handled")
	return false

func _call_method_on_agents(method):
	var returns = []
	for agent in agents:
		returns.append(agent.call(method))
		
	return returns


func _reset_agents_if_done():
	for agent in agents:
		if agent.get_done(): 
			agent.set_done_false()

func _reset_all_agents():
	for agent in agents:
		agent.needs_reset = true
		#agent.reset()   

func _get_obs_from_agents():
	var obs = []
	for agent in agents:
		obs.append(agent.get_obs())

	return obs
	
func _get_reward_from_agents():
	var rewards = [] 
	for agent in agents:
		rewards.append(agent.get_reward())
		agent.zero_reward()
	return rewards    
	
func _get_done_from_agents():
	var dones = [] 
	for agent in agents:
		var done = agent.get_done()
		if done: agent.set_done_false()
		dones.append(done)
	return dones    
	
func _set_agent_actions(actions):
	for i in range(len(actions)):
		agents[i].set_action(actions[i])
	
func clamp_array(arr : Array, min:float, max:float):
	var output : Array = []
	for a in arr:
		output.append(clamp(a, min, max))
	return output
              extends Node

# --fixed-fps 2000 --disable-render-loop

enum ControlModes {HUMAN, TRAINING, ONNX_INFERENCE}
@export var control_mode: ControlModes = ControlModes.TRAINING
@export_range(1, 10, 1, "or_greater") var action_repeat := 8
@export_range(1, 10, 1, "or_greater") var speed_up = 1
@export var onnx_model_path := ""

@onready var start_time = Time.get_ticks_msec()

const MAJOR_VERSION := "0"
const MINOR_VERSION := "7" 
const DEFAULT_PORT := "11008"
const DEFAULT_SEED := "1"
var stream : StreamPeerTCP = null
var connected = false
var message_center
var should_connect = true
var agents
var need_to_send_obs = false
var args = null
var initialized = false
var just_reset = false
var onnx_model = null
var n_action_steps = 0

var _action_space : Dictionary
var _obs_space : Dictionary

# Called when the node enters the scene tree for the first time.
func _ready():
	await get_tree().root.ready
	get_tree().set_pause(true) 
	_initialize()
	await get_tree().create_timer(1.0).timeout
	get_tree().set_pause(false) 
	
func _initialize():
	_get_agents()
	_obs_space = agents[0].get_obs_space()
	_action_space = agents[0].get_action_space()
	args = _get_args()
	Engine.physics_ticks_per_second = _get_speedup() * 60 # Replace with function body.
	Engine.time_scale = _get_speedup() * 1.0
	prints("physics ticks", Engine.physics_ticks_per_second, Engine.time_scale, _get_speedup(), speed_up)
	
	_set_heuristic("human")
	match control_mode:
		ControlModes.TRAINING:
			connected = connect_to_server()
			if connected:
				_set_heuristic("model")
				_handshake()
				_send_env_info()  
			else:
				push_warning("Couldn't connect to Python server, using human controls instead. ",
				"Did you start the training server using e.g. `gdrl` from the console?")
		ControlModes.ONNX_INFERENCE:
				#assert(FileAccess.file_exists(onnx_model_path), "Onnx Model Path set on Sync node does not exist: %s" % onnx_model_path)
				#onnx_model = ONNXModel.new(onnx_model_path, 1)
				_set_heuristic("model")	
	
	_set_seed()
	_set_action_repeat()
	initialized = true  

func _physics_process(_delta): 
	# two modes, human control, agent control
	# pause tree, send obs, get actions, set actions, unpause tree
	if n_action_steps % action_repeat != 0:
		n_action_steps += 1
		return

	n_action_steps += 1
	
	if connected:
		get_tree().set_pause(true) 
		
		if just_reset:
			just_reset = false
			var obs = _get_obs_from_agents()
		
			var reply = {
				"type": "reset",
				"obs": obs
			}
			_send_dict_as_json_message(reply)
			# this should go straight to getting the action and setting it checked the agent, no need to perform one phyics tick
			get_tree().set_pause(false) 
			return
		
		if need_to_send_obs:
			need_to_send_obs = false
			var reward = _get_reward_from_agents()
			var done = _get_done_from_agents()
			#_reset_agents_if_done() # this ensures the new observation is from the next env instance : NEEDS REFACTOR
			
			var obs = _get_obs_from_agents()
			
			var reply = {
				"type": "step",
				"obs": obs,
				"reward": reward,
				"done": done
			}
			_send_dict_as_json_message(reply)
		
		var handled = handle_message()
	
	elif onnx_model != null:
		var obs : Array = _get_obs_from_agents()
	
		var actions = []
		for o in obs:
			var action = onnx_model.run_inference(o["obs"], 1.0)
			action["output"] = clamp_array(action["output"], -1.0, 1.0)
			var action_dict = _extract_action_dict(action["output"])
			actions.append(action_dict)
		
		_set_agent_actions(actions) 
		need_to_send_obs = true
		get_tree().set_pause(false) 
		_reset_agents_if_done()	
		
	else:
		_reset_agents_if_done()	

func _extract_action_dict(action_array: Array):
	var index = 0
	var result = {}
	for key in _action_space.keys():
		var size = _action_space[key]["size"]
		if _action_space[key]["action_type"] == "discrete":
			result[key] = round(action_array[index])
		else:
			result[key] = action_array.slice(index,index+size)
		index += size
		
	return result

func _get_agents():
	agents = get_tree().get_nodes_in_group("AGENT")

func _set_heuristic(heuristic):
	for agent in agents:
		agent.set_heuristic(heuristic)

func _handshake():
	print("performing handshake")
	
	var json_dict = _get_dict_json_message()
	assert(json_dict["type"] == "handshake")
	var major_version = json_dict["major_version"]
	var minor_version = json_dict["minor_version"]
	if major_version != MAJOR_VERSION:
		print("WARNING: major verison mismatch ", major_version, " ", MAJOR_VERSION)  
	if minor_version != MINOR_VERSION:
		print("WARNING: minor verison mismatch ", minor_version, " ", MINOR_VERSION)
		
	print("handshake complete")

func _get_dict_json_message():
	# returns a dictionary from of the most recent message
	# this is not waiting
	while stream.get_available_bytes() == 0:
		stream.poll()
		if stream.get_status() != 2:
			print("server disconnected status, closing")
			get_tree().quit()
			return null

		OS.delay_usec(10)
		
	var message = stream.get_string()
	var json_data = JSON.parse_string(message)
	
	return json_data

func _send_dict_as_json_message(dict):
	stream.put_string(JSON.stringify(dict, "", false))

func _send_env_info():
	var json_dict = _get_dict_json_message()
	assert(json_dict["type"] == "env_info")

		
	var message = {
		"type" : "env_info",
		"observation_space": _obs_space,
		"action_space":_action_space,
		"n_agents": len(agents)
		}
	_send_dict_as_json_message(message)

func connect_to_server():
	print("Waiting for one second to allow server to start")
	OS.delay_msec(1000)
	print("trying to connect to server")
	stream = StreamPeerTCP.new()
	
	# "localhost" was not working on windows VM, had to use the IP
	var ip = "127.0.0.1"
	var port = _get_port()
	var connect = stream.connect_to_host(ip, port)
	stream.set_no_delay(true) # TODO check if this improves performance or not
	stream.poll()
	# Fetch the status until it is either connected (2) or failed to connect (3)
	while stream.get_status() < 2:
		stream.poll()
	return stream.get_status() == 2

func _get_args():
	print("getting command line arguments")
	var arguments = {}
	for argument in OS.get_cmdline_args():
		print(argument)
		if argument.find("=") > -1:
			var key_value = argument.split("=")
			arguments[key_value[0].lstrip("--")] = key_value[1]
		else:
			# Options without an argument will be present in the dictionary,
			# with the value set to an empty string.
			arguments[argument.lstrip("--")] = ""

	return arguments   

func _get_speedup():
	print(args)
	return args.get("speedup", str(speed_up)).to_int()

func _get_port():    
	return args.get("port", DEFAULT_PORT).to_int()

func _set_seed():
	var _seed = args.get("env_seed", DEFAULT_SEED).to_int()
	seed(_seed)

func _set_action_repeat():
	action_repeat = args.get("action_repeat", str(action_repeat)).to_int()
	
func disconnect_from_server():
	stream.disconnect_from_host()



func handle_message() -> bool:
	# get json message: reset, step, close
	var message = _get_dict_json_message()
	if message["type"] == "close":
		print("received close message, closing game")
		get_tree().quit()
		get_tree().set_pause(false) 
		return true
		
	if message["type"] == "reset":
		print("resetting all agents")
		_reset_all_agents()
		just_reset = true
		get_tree().set_pause(false) 
		#print("resetting forcing draw")
#        RenderingServer.force_draw()
#        var obs = _get_obs_from_agents()
#        print("obs ", obs)
#        var reply = {
#            "type": "reset",
#            "obs": obs
#        }
#        _send_dict_as_json_message(reply)   
		return true
		
	if message["type"] == "call":
		var method = message["method"]
		var returns = _call_method_on_agents(method)
		var reply = {
			"type": "call",
			"returns": returns
		}
		print("calling method from Python")
		_send_dict_as_json_message(reply)   
		return handle_message()
	
	if message["type"] == "action":
		var action = message["action"]
		_set_agent_actions(action) 
		need_to_send_obs = true
		get_tree().set_pause(false) 
		return true
		
	print("message was not handled")
	return false

func _call_method_on_agents(method):
	var returns = []
	for agent in agents:
		returns.append(agent.call(method))
		
	return returns


func _reset_agents_if_done():
	for agent in agents:
		if agent.get_done(): 
			agent.set_done_false()

func _reset_all_agents():
	for agent in agents:
		agent.needs_reset = true
		#agent.reset()   

func _get_obs_from_agents():
	var obs = []
	for agent in agents:
		obs.append(agent.get_obs())

	return obs
	
func _get_reward_from_agents():
	var rewards = [] 
	for agent in agents:
		rewards.append(agent.get_reward())
		agent.zero_reward()
	return rewards    
	
func _get_done_from_agents():
	var dones = [] 
	for agent in agents:
		var done = agent.get_done()
		if done: agent.set_done_false()
		dones.append(done)
	return dones    
	
func _set_agent_actions(actions):
	for i in range(len(actions)):
		agents[i].set_action(actions[i])
	
func clamp_array(arr : Array, min:float, max:float):
	var output : Array = []
	for a in arr:
		output.append(clamp(a, min, max))
	return output
 [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://df34a0hiq32m4"
metadata={
"imported_formats": ["s3tc_bptc"],
"vram_texture": true
}
          extends RigidBody3D

@export var speed := 2.0

func reset():
	position = Vector3.ZERO
	linear_velocity = Vector3(randf_range(-1.0,1.0),0.0,randf_range(-1.0,1.0))
	_normalize_velocity()

func _physics_process(delta):
	_normalize_velocity()
	
func _normalize_velocity():
	linear_velocity = linear_velocity.normalized()
	linear_velocity *= speed
         extends AIController3D

var move_action : float = 0.0

func get_obs() -> Dictionary:
	# get the balls position and velocity in the paddle's frame of reference
	# _player in assigned in the parent class's init method
	var ball_pos = to_local(_player.ball.global_position)
	var ball_vel = to_local(_player.ball.linear_velocity)
	var obs = [ball_pos.x, ball_pos.z, ball_vel.x/10.0, ball_vel.z/10.0]

	return {"obs": obs}

func get_reward() -> float:	
	return reward
	
func get_action_space() -> Dictionary:
	return {
		"move_action" : {
			"size": 1,
			"action_type": "continuous"
		},
	}
	
func set_action(action) -> void:	
	move_action = clamp(action["move_action"][0], -1.0, 1.0)
       extends Node3D

func _ready():
	randomize()

func _on_ring_body_entered(body):
	$Player.game_over()
            RSRC                    PackedScene            ��������                                            �      ..    resource_local_to_scene    resource_name    background_mode    background_color    background_energy_multiplier    background_intensity    background_canvas_max_layer    background_camera_feed_id    sky    sky_custom_fov    sky_rotation    ambient_light_source    ambient_light_color    ambient_light_sky_contribution    ambient_light_energy    reflected_light_source    tonemap_mode    tonemap_exposure    tonemap_white    ssr_enabled    ssr_max_steps    ssr_fade_in    ssr_fade_out    ssr_depth_tolerance    ssao_enabled    ssao_radius    ssao_intensity    ssao_power    ssao_detail    ssao_horizon    ssao_sharpness    ssao_light_affect    ssao_ao_channel_affect    ssil_enabled    ssil_radius    ssil_intensity    ssil_sharpness    ssil_normal_rejection    sdfgi_enabled    sdfgi_use_occlusion    sdfgi_read_sky_light    sdfgi_bounce_feedback    sdfgi_cascades    sdfgi_min_cell_size    sdfgi_cascade0_distance    sdfgi_max_distance    sdfgi_y_scale    sdfgi_energy    sdfgi_normal_bias    sdfgi_probe_bias    glow_enabled    glow_levels/1    glow_levels/2    glow_levels/3    glow_levels/4    glow_levels/5    glow_levels/6    glow_levels/7    glow_normalized    glow_intensity    glow_strength 	   glow_mix    glow_bloom    glow_blend_mode    glow_hdr_threshold    glow_hdr_scale    glow_hdr_luminance_cap    glow_map_strength 	   glow_map    fog_enabled    fog_light_color    fog_light_energy    fog_sun_scatter    fog_density    fog_aerial_perspective    fog_sky_affect    fog_height    fog_height_density    volumetric_fog_enabled    volumetric_fog_density    volumetric_fog_albedo    volumetric_fog_emission    volumetric_fog_emission_energy    volumetric_fog_gi_inject    volumetric_fog_anisotropy    volumetric_fog_length    volumetric_fog_detail_spread    volumetric_fog_ambient_inject    volumetric_fog_sky_affect -   volumetric_fog_temporal_reprojection_enabled ,   volumetric_fog_temporal_reprojection_amount    adjustment_enabled    adjustment_brightness    adjustment_contrast    adjustment_saturation    adjustment_color_correction    script    render_priority 
   next_pass    transparency    blend_mode 
   cull_mode    depth_draw_mode    no_depth_test    shading_mode    diffuse_mode    specular_mode    disable_ambient_light    disable_fog    vertex_color_use_as_albedo    vertex_color_is_srgb    albedo_color    albedo_texture    albedo_texture_force_srgb    albedo_texture_msdf 	   metallic    metallic_specular    metallic_texture    metallic_texture_channel 
   roughness    roughness_texture    roughness_texture_channel    emission_enabled 	   emission    emission_energy_multiplier    emission_operator    emission_on_uv2    emission_texture    normal_enabled    normal_scale    normal_texture    rim_enabled    rim 	   rim_tint    rim_texture    clearcoat_enabled 
   clearcoat    clearcoat_roughness    clearcoat_texture    anisotropy_enabled    anisotropy    anisotropy_flowmap    ao_enabled    ao_light_affect    ao_texture 
   ao_on_uv2    ao_texture_channel    heightmap_enabled    heightmap_scale    heightmap_deep_parallax    heightmap_flip_tangent    heightmap_flip_binormal    heightmap_texture    heightmap_flip_texture    subsurf_scatter_enabled    subsurf_scatter_strength    subsurf_scatter_skin_mode    subsurf_scatter_texture &   subsurf_scatter_transmittance_enabled $   subsurf_scatter_transmittance_color &   subsurf_scatter_transmittance_texture $   subsurf_scatter_transmittance_depth $   subsurf_scatter_transmittance_boost    backlight_enabled 
   backlight    backlight_texture    refraction_enabled    refraction_scale    refraction_texture    refraction_texture_channel    detail_enabled    detail_mask    detail_blend_mode    detail_uv_layer    detail_albedo    detail_normal 
   uv1_scale    uv1_offset    uv1_triplanar    uv1_triplanar_sharpness    uv1_world_triplanar 
   uv2_scale    uv2_offset    uv2_triplanar    uv2_triplanar_sharpness    uv2_world_triplanar    texture_filter    texture_repeat    disable_receive_shadows    shadow_to_opacity    billboard_mode    billboard_keep_scale    grow    grow_amount    fixed_size    use_point_size    point_size    use_particle_trails    proximity_fade_enabled    proximity_fade_distance    msdf_pixel_range    msdf_outline_size    distance_fade_mode    distance_fade_min_distance    distance_fade_max_distance    lightmap_size_hint 	   material    custom_aabb    flip_faces    add_uv2    uv2_padding    size    subdivide_width    subdivide_height    subdivide_depth    inner_radius    outer_radius    rings    ring_segments    custom_solver_bias    margin    data    backface_collision 	   friction    rough    bounce 
   absorbent    radius    height    radial_segments    is_hemisphere 	   _bundled       Script    res://game.gd ��������   PackedScene    res://player.tscn �wI����w   Script    res://ball.gd ��������
      local://Environment_h5lwx �      !   local://StandardMaterial3D_nynut �         local://BoxMesh_081ux ,      !   local://StandardMaterial3D_5oyw4 h         local://TorusMesh_qpme7 �      $   local://ConcavePolygonShape3D_d7cjh 	         local://PhysicsMaterial_88503 ;_         local://SphereShape3D_v5ufm s_         local://SphereMesh_bbjcb �_         local://PackedScene_0w6hd �_         Environment                      a         StandardMaterial3D    p                    �?a         BoxMesh    �            �         A���=   Aa         StandardMaterial3D    d         p      ��Q?    ���>���>a      
   TorusMesh    �            �      ��9@�        @@�          �         a         ConcavePolygonShape3D    �   #      E��    	6�    ��=Έ:�        ��9�E��    	6�ŏ���=M�6�    ��=Έ:�ŏ���=M�6�    ��L=��<�    ��=Έ:�ŏ���=M�6��S���L=�+9�    ��L=��<��S���L=�+9�    ��=�?�    ��L=��<��S���L=�+9�+���=Zd;�    ��=�?�+���=Zd;�          @�    ��=�?�+���=Zd;�9��    HP<�          @�9��    HP<�    ����?�          @�9��    HP<�+����Zd;�    ����?�+����Zd;�    ��L���<�    ����?�+����Zd;��S���L��+9�    ��L���<��S���L��+9�    ���Έ:�    ��L���<��S���L��+9�ŏ����M�6�    ���Έ:�ŏ����M�6�        ��9�    ���Έ:�ŏ����M�6�E��    	6�        ��9����    �y+�ŏ���=M�6�E��    	6����    �y+�mŎ���=�V,�ŏ���=M�6�mŎ���=�V,��S���L=�+9�ŏ���=M�6�mŎ���=�V,������L=�l.��S���L=�+9������L=�l.�+���=Zd;��S���L=�+9������L=�l.�*:����=��0�+���=Zd;�*:����=��0�9��    HP<�+���=Zd;�*:����=��0�����    �a1�9��    HP<�����    �a1�+����Zd;�9��    HP<�����    �a1�*:�������0�+����Zd;�*:�������0��S���L��+9�+����Zd;�*:�������0������L��l.��S���L��+9������L��l.�ŏ����M�6��S���L��+9������L��l.�mŎ�����V,�ŏ����M�6�mŎ�����V,�E��    	6�ŏ����M�6�mŎ�����V,����    �y+�E��    	6��;ο    �R�mŎ���=�V,����    �y+��;ο    �R�9EϿ��=��mŎ���=�V,�9EϿ��=�������L=�l.�mŎ���=�V,�9EϿ��=��z�ѿ��L=��������L=�l.�z�ѿ��L=���*:����=��0������L=�l.�z�ѿ��L=���MԿ��=]��*:����=��0�MԿ��=]������    �a1�*:����=��0�MԿ��=]��mVտ    @������    �a1�mVտ    @��*:�������0�����    �a1�mVտ    @��MԿ���]��*:�������0�MԿ���]�������L��l.�*:�������0�MԿ���]��z�ѿ��L���������L��l.�z�ѿ��L����mŎ�����V,������L��l.�z�ѿ��L����9EϿ�����mŎ�����V,�9EϿ��������    �y+�mŎ�����V,�9EϿ������;ο    �R����    �y+�=�    =�9EϿ��=���;ο    �R�=�    =�m����=m��9EϿ��=��m����=m��z�ѿ��L=���9EϿ��=��m����=m������L=��z�ѿ��L=�������L=��MԿ��=]��z�ѿ��L=�������L=������=��MԿ��=]������=��mVտ    @��MԿ��=]������=��a��    a��mVտ    @��a��    a��MԿ���]��mVտ    @��a��    a���������MԿ���]���������z�ѿ��L����MԿ���]�������������L���z�ѿ��L��������L���9EϿ�����z�ѿ��L��������L���m�����m��9EϿ�����m�����m���;ο    �R�9EϿ�����m�����m��=�    =��;ο    �R��R�    �;οm����=m��=�    =��R�    �;ο����=9EϿm����=m������=9EϿ����L=��m����=m������=9EϿ�����L=z�ѿ����L=�������L=z�ѿ����=������L=�������L=z�ѿ]����=MԿ����=��]����=MԿa��    a������=��]����=MԿ@��    mVտa��    a��@��    mVտ�������a��    a��@��    mVտ]�����MԿ�������]�����MԿ����L����������]�����MԿ�����L�z�ѿ����L��������L�z�ѿm�����m������L��������L�z�ѿ�����9EϿm�����m�������9EϿ=�    =�m�����m�������9EϿ�R�    �;ο=�    =��y+�    �������=9EϿ�R�    �;ο�y+�    ����V,���=mŎ�����=9EϿ�V,���=mŎ������L=z�ѿ����=9EϿ�V,���=mŎ��l.���L=��������L=z�ѿ�l.���L=���]����=MԿ�����L=z�ѿ�l.���L=�����0���=*:��]����=MԿ��0���=*:��@��    mVտ]����=MԿ��0���=*:���a1�    ����@��    mVտ�a1�    ����]�����MԿ@��    mVտ�a1�    ������0����*:��]�����MԿ��0����*:�������L�z�ѿ]�����MԿ��0����*:���l.���L���������L�z�ѿ�l.���L���������9EϿ�����L�z�ѿ�l.���L�����V,����mŎ������9EϿ�V,����mŎ��R�    �;ο�����9EϿ�V,����mŎ��y+�    ����R�    �;ο	6�    E���V,���=mŎ��y+�    ���	6�    E��M�6���=ŏ��V,���=mŎ�M�6���=ŏ��l.���L=����V,���=mŎ�M�6���=ŏ��+9���L=�S��l.���L=����+9���L=�S���0���=*:���l.���L=����+9���L=�S�Zd;���=+���0���=*:��Zd;���=+��a1�    ������0���=*:��Zd;���=+�HP<�    9���a1�    ����HP<�    9����0����*:���a1�    ����HP<�    9��Zd;����+���0����*:��Zd;����+��l.���L������0����*:��Zd;����+��+9���L��S��l.���L�����+9���L��S��V,����mŎ��l.���L�����+9���L��S�M�6����ŏ��V,����mŎ�M�6����ŏ��y+�    ����V,����mŎ�M�6����ŏ�	6�    E���y+�    �����9�        M�6���=ŏ�	6�    E����9�        Έ:���=    M�6���=ŏ�Έ:���=    �+9���L=�S�M�6���=ŏ�Έ:���=    ��<���L=    �+9���L=�S���<���L=    Zd;���=+��+9���L=�S���<���L=    �?���=    Zd;���=+��?���=    HP<�    9��Zd;���=+��?���=      @�        HP<�    9��  @�        Zd;����+�HP<�    9��  @�        �?����    Zd;����+��?����    �+9���L��S�Zd;����+��?����    ��<���L�    �+9���L��S���<���L�    M�6����ŏ��+9���L��S���<���L�    Έ:����    M�6����ŏ�Έ:����    	6�    E��M�6����ŏ�Έ:����    ��9�        	6�    E��	6�    E�?Έ:���=    ��9�        	6�    E�?M�6���=ŏ?Έ:���=    M�6���=ŏ?��<���L=    Έ:���=    M�6���=ŏ?�+9���L=�S?��<���L=    �+9���L=�S?�?���=    ��<���L=    �+9���L=�S?Zd;���=+?�?���=    Zd;���=+?  @�        �?���=    Zd;���=+?HP<�    9�?  @�        HP<�    9�?�?����      @�        HP<�    9�?Zd;����+?�?����    Zd;����+?��<���L�    �?����    Zd;����+?�+9���L��S?��<���L�    �+9���L��S?Έ:����    ��<���L�    �+9���L��S?M�6����ŏ?Έ:����    M�6����ŏ?��9�        Έ:����    M�6����ŏ?	6�    E�?��9�        �y+�    ��?M�6���=ŏ?	6�    E�?�y+�    ��?�V,���=mŎ?M�6���=ŏ?�V,���=mŎ?�+9���L=�S?M�6���=ŏ?�V,���=mŎ?�l.���L=��?�+9���L=�S?�l.���L=��?Zd;���=+?�+9���L=�S?�l.���L=��?��0���=*:�?Zd;���=+?��0���=*:�?HP<�    9�?Zd;���=+?��0���=*:�?�a1�    ���?HP<�    9�?�a1�    ���?Zd;����+?HP<�    9�?�a1�    ���?��0����*:�?Zd;����+?��0����*:�?�+9���L��S?Zd;����+?��0����*:�?�l.���L���?�+9���L��S?�l.���L���?M�6����ŏ?�+9���L��S?�l.���L���?�V,����mŎ?M�6����ŏ?�V,����mŎ?	6�    E�?M�6����ŏ?�V,����mŎ?�y+�    ��?	6�    E�?�R�    �;�?�V,���=mŎ?�y+�    ��?�R�    �;�?����=9E�?�V,���=mŎ?����=9E�?�l.���L=��?�V,���=mŎ?����=9E�?�����L=z��?�l.���L=��?�����L=z��?��0���=*:�?�l.���L=��?�����L=z��?]����=M�?��0���=*:�?]����=M�?�a1�    ���?��0���=*:�?]����=M�?@��    mV�?�a1�    ���?@��    mV�?��0����*:�?�a1�    ���?@��    mV�?]�����M�?��0����*:�?]�����M�?�l.���L���?��0����*:�?]�����M�?�����L�z��?�l.���L���?�����L�z��?�V,����mŎ?�l.���L���?�����L�z��?�����9E�?�V,����mŎ?�����9E�?�y+�    ��?�V,����mŎ?�����9E�?�R�    �;�?�y+�    ��?=�    =@����=9E�?�R�    �;�?=�    =@m����=m�@����=9E�?m����=m�@�����L=z��?����=9E�?m����=m�@����L=�@�����L=z��?����L=�@]����=M�?�����L=z��?����L=�@����=�@]����=M�?����=�@@��    mV�?]����=M�?����=�@a��    a�@@��    mV�?a��    a�@]�����M�?@��    mV�?a��    a�@������@]�����M�?������@�����L�z��?]�����M�?������@����L��@�����L�z��?����L��@�����9E�?�����L�z��?����L��@m�����m�@�����9E�?m�����m�@�R�    �;�?�����9E�?m�����m�@=�    =@�R�    �;�?�;ο    �R@m����=m�@=�    =@�;ο    �R@9EϿ��=�@m����=m�@9EϿ��=�@����L=�@m����=m�@9EϿ��=�@z�ѿ��L=��@����L=�@z�ѿ��L=��@����=�@����L=�@z�ѿ��L=��@MԿ��=]�@����=�@MԿ��=]�@a��    a�@����=�@MԿ��=]�@mVտ    @�@a��    a�@mVտ    @�@������@a��    a�@mVտ    @�@MԿ���]�@������@MԿ���]�@����L��@������@MԿ���]�@z�ѿ��L���@����L��@z�ѿ��L���@m�����m�@����L��@z�ѿ��L���@9EϿ����@m�����m�@9EϿ����@=�    =@m�����m�@9EϿ����@�;ο    �R@=�    =@���    �y+@9EϿ��=�@�;ο    �R@���    �y+@mŎ���=�V,@9EϿ��=�@mŎ���=�V,@z�ѿ��L=��@9EϿ��=�@mŎ���=�V,@�����L=�l.@z�ѿ��L=��@�����L=�l.@MԿ��=]�@z�ѿ��L=��@�����L=�l.@*:����=��0@MԿ��=]�@*:����=��0@mVտ    @�@MԿ��=]�@*:����=��0@����    �a1@mVտ    @�@����    �a1@MԿ���]�@mVտ    @�@����    �a1@*:�������0@MԿ���]�@*:�������0@z�ѿ��L���@MԿ���]�@*:�������0@�����L��l.@z�ѿ��L���@�����L��l.@9EϿ����@z�ѿ��L���@�����L��l.@mŎ�����V,@9EϿ����@mŎ�����V,@�;ο    �R@9EϿ����@mŎ�����V,@���    �y+@�;ο    �R@E��    	6@mŎ���=�V,@���    �y+@E��    	6@ŏ���=M�6@mŎ���=�V,@ŏ���=M�6@�����L=�l.@mŎ���=�V,@ŏ���=M�6@�S���L=�+9@�����L=�l.@�S���L=�+9@*:����=��0@�����L=�l.@�S���L=�+9@+���=Zd;@*:����=��0@+���=Zd;@����    �a1@*:����=��0@+���=Zd;@9��    HP<@����    �a1@9��    HP<@*:�������0@����    �a1@9��    HP<@+����Zd;@*:�������0@+����Zd;@�����L��l.@*:�������0@+����Zd;@�S���L��+9@�����L��l.@�S���L��+9@mŎ�����V,@�����L��l.@�S���L��+9@ŏ����M�6@mŎ�����V,@ŏ����M�6@���    �y+@mŎ�����V,@ŏ����M�6@E��    	6@���    �y+@        ��9@ŏ���=M�6@E��    	6@        ��9@    ��=Έ:@ŏ���=M�6@    ��=Έ:@�S���L=�+9@ŏ���=M�6@    ��=Έ:@    ��L=��<@�S���L=�+9@    ��L=��<@+���=Zd;@�S���L=�+9@    ��L=��<@    ��=�?@+���=Zd;@    ��=�?@9��    HP<@+���=Zd;@    ��=�?@          @@9��    HP<@          @@+����Zd;@9��    HP<@          @@    ����?@+����Zd;@    ����?@�S���L��+9@+����Zd;@    ����?@    ��L���<@�S���L��+9@    ��L���<@ŏ����M�6@�S���L��+9@    ��L���<@    ���Έ:@ŏ����M�6@    ���Έ:@E��    	6@ŏ����M�6@    ���Έ:@        ��9@E��    	6@E�?    	6@    ��=Έ:@        ��9@E�?    	6@ŏ?��=M�6@    ��=Έ:@ŏ?��=M�6@    ��L=��<@    ��=Έ:@ŏ?��=M�6@�S?��L=�+9@    ��L=��<@�S?��L=�+9@    ��=�?@    ��L=��<@�S?��L=�+9@+?��=Zd;@    ��=�?@+?��=Zd;@          @@    ��=�?@+?��=Zd;@9�?    HP<@          @@9�?    HP<@    ����?@          @@9�?    HP<@+?���Zd;@    ����?@+?���Zd;@    ��L���<@    ����?@+?���Zd;@�S?��L��+9@    ��L���<@�S?��L��+9@    ���Έ:@    ��L���<@�S?��L��+9@ŏ?���M�6@    ���Έ:@ŏ?���M�6@        ��9@    ���Έ:@ŏ?���M�6@E�?    	6@        ��9@��?    �y+@ŏ?��=M�6@E�?    	6@��?    �y+@mŎ?��=�V,@ŏ?��=M�6@mŎ?��=�V,@�S?��L=�+9@ŏ?��=M�6@mŎ?��=�V,@��?��L=�l.@�S?��L=�+9@��?��L=�l.@+?��=Zd;@�S?��L=�+9@��?��L=�l.@*:�?��=��0@+?��=Zd;@*:�?��=��0@9�?    HP<@+?��=Zd;@*:�?��=��0@���?    �a1@9�?    HP<@���?    �a1@+?���Zd;@9�?    HP<@���?    �a1@*:�?�����0@+?���Zd;@*:�?�����0@�S?��L��+9@+?���Zd;@*:�?�����0@��?��L��l.@�S?��L��+9@��?��L��l.@ŏ?���M�6@�S?��L��+9@��?��L��l.@mŎ?����V,@ŏ?���M�6@mŎ?����V,@E�?    	6@ŏ?���M�6@mŎ?����V,@��?    �y+@E�?    	6@�;�?    �R@mŎ?��=�V,@��?    �y+@�;�?    �R@9E�?��=�@mŎ?��=�V,@9E�?��=�@��?��L=�l.@mŎ?��=�V,@9E�?��=�@z��?��L=��@��?��L=�l.@z��?��L=��@*:�?��=��0@��?��L=�l.@z��?��L=��@M�?��=]�@*:�?��=��0@M�?��=]�@���?    �a1@*:�?��=��0@M�?��=]�@mV�?    @�@���?    �a1@mV�?    @�@*:�?�����0@���?    �a1@mV�?    @�@M�?���]�@*:�?�����0@M�?���]�@��?��L��l.@*:�?�����0@M�?���]�@z��?��L���@��?��L��l.@z��?��L���@mŎ?����V,@��?��L��l.@z��?��L���@9E�?����@mŎ?����V,@9E�?����@��?    �y+@mŎ?����V,@9E�?����@�;�?    �R@��?    �y+@=@    =@9E�?��=�@�;�?    �R@=@    =@m�@��=m�@9E�?��=�@m�@��=m�@z��?��L=��@9E�?��=�@m�@��=m�@�@��L=�@z��?��L=��@�@��L=�@M�?��=]�@z��?��L=��@�@��L=�@�@��=�@M�?��=]�@�@��=�@mV�?    @�@M�?��=]�@�@��=�@a�@    a�@mV�?    @�@a�@    a�@M�?���]�@mV�?    @�@a�@    a�@�@����@M�?���]�@�@����@z��?��L���@M�?���]�@�@����@�@��L��@z��?��L���@�@��L��@9E�?����@z��?��L���@�@��L��@m�@���m�@9E�?����@m�@���m�@�;�?    �R@9E�?����@m�@���m�@=@    =@�;�?    �R@�R@    �;�?m�@��=m�@=@    =@�R@    �;�?�@��=9E�?m�@��=m�@�@��=9E�?�@��L=�@m�@��=m�@�@��=9E�?��@��L=z��?�@��L=�@��@��L=z��?�@��=�@�@��L=�@��@��L=z��?]�@��=M�?�@��=�@]�@��=M�?a�@    a�@�@��=�@]�@��=M�?@�@    mV�?a�@    a�@@�@    mV�?�@����@a�@    a�@@�@    mV�?]�@���M�?�@����@]�@���M�?�@��L��@�@����@]�@���M�?��@��L�z��?�@��L��@��@��L�z��?m�@���m�@�@��L��@��@��L�z��?�@���9E�?m�@���m�@�@���9E�?=@    =@m�@���m�@�@���9E�?�R@    �;�?=@    =@�y+@    ��?�@��=9E�?�R@    �;�?�y+@    ��?�V,@��=mŎ?�@��=9E�?�V,@��=mŎ?��@��L=z��?�@��=9E�?�V,@��=mŎ?�l.@��L=��?��@��L=z��?�l.@��L=��?]�@��=M�?��@��L=z��?�l.@��L=��?��0@��=*:�?]�@��=M�?��0@��=*:�?@�@    mV�?]�@��=M�?��0@��=*:�?�a1@    ���?@�@    mV�?�a1@    ���?]�@���M�?@�@    mV�?�a1@    ���?��0@���*:�?]�@���M�?��0@���*:�?��@��L�z��?]�@���M�?��0@���*:�?�l.@��L���?��@��L�z��?�l.@��L���?�@���9E�?��@��L�z��?�l.@��L���?�V,@���mŎ?�@���9E�?�V,@���mŎ?�R@    �;�?�@���9E�?�V,@���mŎ?�y+@    ��?�R@    �;�?	6@    E�?�V,@��=mŎ?�y+@    ��?	6@    E�?M�6@��=ŏ?�V,@��=mŎ?M�6@��=ŏ?�l.@��L=��?�V,@��=mŎ?M�6@��=ŏ?�+9@��L=�S?�l.@��L=��?�+9@��L=�S?��0@��=*:�?�l.@��L=��?�+9@��L=�S?Zd;@��=+?��0@��=*:�?Zd;@��=+?�a1@    ���?��0@��=*:�?Zd;@��=+?HP<@    9�?�a1@    ���?HP<@    9�?��0@���*:�?�a1@    ���?HP<@    9�?Zd;@���+?��0@���*:�?Zd;@���+?�l.@��L���?��0@���*:�?Zd;@���+?�+9@��L��S?�l.@��L���?�+9@��L��S?�V,@���mŎ?�l.@��L���?�+9@��L��S?M�6@���ŏ?�V,@���mŎ?M�6@���ŏ?�y+@    ��?�V,@���mŎ?M�6@���ŏ?	6@    E�?�y+@    ��?��9@        M�6@��=ŏ?	6@    E�?��9@        Έ:@��=    M�6@��=ŏ?Έ:@��=    �+9@��L=�S?M�6@��=ŏ?Έ:@��=    ��<@��L=    �+9@��L=�S?��<@��L=    Zd;@��=+?�+9@��L=�S?��<@��L=    �?@��=    Zd;@��=+?�?@��=    HP<@    9�?Zd;@��=+?�?@��=      @@        HP<@    9�?  @@        Zd;@���+?HP<@    9�?  @@        �?@���    Zd;@���+?�?@���    �+9@��L��S?Zd;@���+?�?@���    ��<@��L�    �+9@��L��S?��<@��L�    M�6@���ŏ?�+9@��L��S?��<@��L�    Έ:@���    M�6@���ŏ?Έ:@���    	6@    E�?M�6@���ŏ?Έ:@���    ��9@        	6@    E�?	6@    E��Έ:@��=    ��9@        	6@    E��M�6@��=ŏ�Έ:@��=    M�6@��=ŏ���<@��L=    Έ:@��=    M�6@��=ŏ��+9@��L=�S���<@��L=    �+9@��L=�S��?@��=    ��<@��L=    �+9@��L=�S�Zd;@��=+��?@��=    Zd;@��=+�  @@        �?@��=    Zd;@��=+�HP<@    9��  @@        HP<@    9���?@���      @@        HP<@    9��Zd;@���+��?@���    Zd;@���+���<@��L�    �?@���    Zd;@���+��+9@��L��S���<@��L�    �+9@��L��S�Έ:@���    ��<@��L�    �+9@��L��S�M�6@���ŏ�Έ:@���    M�6@���ŏ���9@        Έ:@���    M�6@���ŏ�	6@    E����9@        �y+@    ���M�6@��=ŏ�	6@    E���y+@    ����V,@��=mŎ�M�6@��=ŏ��V,@��=mŎ��+9@��L=�S�M�6@��=ŏ��V,@��=mŎ��l.@��L=����+9@��L=�S��l.@��L=���Zd;@��=+��+9@��L=�S��l.@��L=�����0@��=*:��Zd;@��=+���0@��=*:��HP<@    9��Zd;@��=+���0@��=*:���a1@    ����HP<@    9���a1@    ����Zd;@���+�HP<@    9���a1@    ������0@���*:��Zd;@���+���0@���*:���+9@��L��S�Zd;@���+���0@���*:���l.@��L�����+9@��L��S��l.@��L����M�6@���ŏ��+9@��L��S��l.@��L�����V,@���mŎ�M�6@���ŏ��V,@���mŎ�	6@    E��M�6@���ŏ��V,@���mŎ��y+@    ���	6@    E���R@    �;ο�V,@��=mŎ��y+@    ����R@    �;ο�@��=9EϿ�V,@��=mŎ��@��=9EϿ�l.@��L=����V,@��=mŎ��@��=9EϿ��@��L=z�ѿ�l.@��L=�����@��L=z�ѿ��0@��=*:���l.@��L=�����@��L=z�ѿ]�@��=MԿ��0@��=*:��]�@��=MԿ�a1@    ������0@��=*:��]�@��=MԿ@�@    mVտ�a1@    ����@�@    mVտ��0@���*:���a1@    ����@�@    mVտ]�@���MԿ��0@���*:��]�@���MԿ�l.@��L������0@���*:��]�@���MԿ��@��L�z�ѿ�l.@��L������@��L�z�ѿ�V,@���mŎ��l.@��L������@��L�z�ѿ�@���9EϿ�V,@���mŎ��@���9EϿ�y+@    ����V,@���mŎ��@���9EϿ�R@    �;ο�y+@    ���=@    =��@��=9EϿ�R@    �;ο=@    =�m�@��=m���@��=9EϿm�@��=m����@��L=z�ѿ�@��=9EϿm�@��=m���@��L=����@��L=z�ѿ�@��L=��]�@��=MԿ��@��L=z�ѿ�@��L=���@��=��]�@��=MԿ�@��=��@�@    mVտ]�@��=MԿ�@��=��a�@    a��@�@    mVտa�@    a��]�@���MԿ@�@    mVտa�@    a���@�����]�@���MԿ�@�������@��L�z�ѿ]�@���MԿ�@������@��L�����@��L�z�ѿ�@��L����@���9EϿ��@��L�z�ѿ�@��L���m�@���m���@���9EϿm�@���m���R@    �;ο�@���9EϿm�@���m��=@    =��R@    �;ο�;�?    �R�m�@��=m��=@    =��;�?    �R�9E�?��=��m�@��=m��9E�?��=���@��L=��m�@��=m��9E�?��=��z��?��L=����@��L=��z��?��L=����@��=���@��L=��z��?��L=���M�?��=]���@��=��M�?��=]��a�@    a���@��=��M�?��=]��mV�?    @��a�@    a��mV�?    @���@�����a�@    a��mV�?    @��M�?���]���@�����M�?���]���@��L����@�����M�?���]��z��?��L�����@��L���z��?��L����m�@���m���@��L���z��?��L����9E�?�����m�@���m��9E�?�����=@    =�m�@���m��9E�?������;�?    �R�=@    =���?    �y+�9E�?��=���;�?    �R���?    �y+�mŎ?��=�V,�9E�?��=��mŎ?��=�V,�z��?��L=���9E�?��=��mŎ?��=�V,���?��L=�l.�z��?��L=�����?��L=�l.�M�?��=]��z��?��L=�����?��L=�l.�*:�?��=��0�M�?��=]��*:�?��=��0�mV�?    @��M�?��=]��*:�?��=��0����?    �a1�mV�?    @�����?    �a1�M�?���]��mV�?    @�����?    �a1�*:�?�����0�M�?���]��*:�?�����0�z��?��L����M�?���]��*:�?�����0���?��L��l.�z��?��L������?��L��l.�9E�?�����z��?��L������?��L��l.�mŎ?����V,�9E�?�����mŎ?����V,��;�?    �R�9E�?�����mŎ?����V,���?    �y+��;�?    �R�E�?    	6�mŎ?��=�V,���?    �y+�E�?    	6�ŏ?��=M�6�mŎ?��=�V,�ŏ?��=M�6���?��L=�l.�mŎ?��=�V,�ŏ?��=M�6��S?��L=�+9���?��L=�l.��S?��L=�+9�*:�?��=��0���?��L=�l.��S?��L=�+9�+?��=Zd;�*:�?��=��0�+?��=Zd;����?    �a1�*:�?��=��0�+?��=Zd;�9�?    HP<����?    �a1�9�?    HP<�*:�?�����0����?    �a1�9�?    HP<�+?���Zd;�*:�?�����0�+?���Zd;���?��L��l.�*:�?�����0�+?���Zd;��S?��L��+9���?��L��l.��S?��L��+9�mŎ?����V,���?��L��l.��S?��L��+9�ŏ?���M�6�mŎ?����V,�ŏ?���M�6���?    �y+�mŎ?����V,�ŏ?���M�6�E�?    	6���?    �y+�        ��9�ŏ?��=M�6�E�?    	6�        ��9�    ��=Έ:�ŏ?��=M�6�    ��=Έ:��S?��L=�+9�ŏ?��=M�6�    ��=Έ:�    ��L=��<��S?��L=�+9�    ��L=��<�+?��=Zd;��S?��L=�+9�    ��L=��<�    ��=�?�+?��=Zd;�    ��=�?�9�?    HP<�+?��=Zd;�    ��=�?�          @�9�?    HP<�          @�+?���Zd;�9�?    HP<�          @�    ����?�+?���Zd;�    ����?��S?��L��+9�+?���Zd;�    ����?�    ��L���<��S?��L��+9�    ��L���<�ŏ?���M�6��S?��L��+9�    ��L���<�    ���Έ:�ŏ?���M�6�    ���Έ:�E�?    	6�ŏ?���M�6�    ���Έ:�        ��9�E�?    	6�a         PhysicsMaterial    �          �        �?a         SphereShape3D    �      ���=a         SphereMesh    �      ���=�      ��L>a         PackedScene    �      	         names "         Game    script    Node3D    DirectionalLight3D 
   transform    light_energy    WorldEnvironment    environment    Ground    mesh    MeshInstance3D    Player 	   Camera3D    Ring    Area3D 	   RingMesh 	   skeleton    CollisionShape3D    shape    Ball    axis_lock_linear_y    axis_lock_angular_y    physics_material_override    gravity_scale    lock_rotation    linear_velocity    linear_damp_mode    RigidBody3D    _on_ring_body_entered    body_entered    	   variants                    г]��ݾ  �>       ?г]?   �  @?�ݾ               ���=               �?              �?              �?< >*�ǽ(�C�                       �?            1�;�  �?      ��1�;�      �@                                                                        @                                       node_count             nodes     |   ��������       ����                            ����                                 ����                     
      ����         	                  ���                            ����                           ����               
      ����   	         	                    ����      
                     ����                                                       	             ����             	       
   
   ����   	                conn_count             conns                                      node_paths              editable_instances              version       a      RSRC         GST2   �   �      ����               � �        &  RIFF  WEBPVP8L  /������!"2�H�l�m�l�H�Q/H^��޷������d��g�(9�$E�Z��ߓ���'3���ض�U�j��$�՜ʝI۶c��3� [���5v�ɶ�=�Ԯ�m���mG�����j�m�m�_�XV����r*snZ'eS�����]n�w�Z:G9�>B�m�It��R#�^�6��($Ɓm+q�h��6�4mb�h3O���$E�s����A*DV�:#�)��)�X/�x�>@\�0|�q��m֋�d�0ψ�t�!&����P2Z�z��QF+9ʿ�d0��VɬF�F� ���A�����j4BUHp�AI�r��ِ���27ݵ<�=g��9�1�e"e�{�(�(m�`Ec\]�%��nkFC��d���7<�
V�Lĩ>���Qo�<`�M�$x���jD�BfY3�37�W��%�ݠ�5�Au����WpeU+.v�mj��%' ��ħp�6S�� q��M�׌F�n��w�$$�VI��o�l��m)��Du!SZ��V@9ד]��b=�P3�D��bSU�9�B���zQmY�M~�M<��Er�8��F)�?@`�:7�=��1I]�������3�٭!'��Jn�GS���0&��;�bE�
�
5[I��=i�/��%�̘@�YYL���J�kKvX���S���	�ڊW_�溶�R���S��I��`��?֩�Z�T^]1��VsU#f���i��1�Ivh!9+�VZ�Mr�טP�~|"/���IK
g`��MK�����|CҴ�ZQs���fvƄ0e�NN�F-���FNG)��W�2�JN	��������ܕ����2
�~�y#cB���1�YϮ�h�9����m������v��`g����]1�)�F�^^]Rץ�f��Tk� s�SP�7L�_Y�x�ŤiC�X]��r�>e:	{Sm�ĒT��ubN����k�Yb�;��Eߝ�m�Us�q��1�(\�����Ӈ�b(�7�"�Yme�WY!-)�L���L�6ie��@�Z3D\?��\W�c"e���4��AǘH���L�`L�M��G$𩫅�W���FY�gL$NI�'������I]�r��ܜ��`W<ߛe6ߛ�I>v���W�!a��������M3���IV��]�yhBҴFlr�!8Մ�^Ҷ�㒸5����I#�I�ڦ���P2R���(�r�a߰z����G~����w�=C�2������C��{�hWl%��и���O������;0*��`��U��R��vw�� (7�T#�Ƨ�o7�
�xk͍\dq3a��	x p�ȥ�3>Wc�� �	��7�kI��9F}�ID
�B���
��v<�vjQ�:a�J�5L&�F�{l��Rh����I��F�鳁P�Nc�w:17��f}u}�Κu@��`� @�������8@`�
�1 ��j#`[�)�8`���vh�p� P���׷�>����"@<�����sv� ����"�Q@,�A��P8��dp{�B��r��X��3��n$�^ ��������^B9��n����0T�m�2�ka9!�2!���]
?p ZA$\S��~B�O ��;��-|��
{�V��:���o��D��D0\R��k����8��!�I�-���-<��/<JhN��W�1���(�#2:E(*�H���{��>��&!��$| �~�+\#��8�> �H??�	E#��VY���t7���> 6�"�&ZJ��p�C_j����	P:�~�G0 �J��$�M���@�Q��Yz��i��~q�1?�c��Bߝϟ�n�*������8j������p���ox���"w���r�yvz U\F8��<E��xz�i���qi����ȴ�ݷ-r`\�6����Y��q^�Lx�9���#���m����-F�F.-�a�;6��lE�Q��)�P�x�:-�_E�4~v��Z�����䷳�:�n��,㛵��m�=wz�Ξ;2-��[k~v��Ӹ_G�%*�i� ����{�%;����m��g�ez.3���{�����Kv���s �fZ!:� 4W��޵D��U��
(t}�]5�ݫ߉�~|z��أ�#%���ѝ܏x�D4�4^_�1�g���<��!����t�oV�lm�s(EK͕��K�����n���Ӌ���&�̝M�&rs�0��q��Z��GUo�]'G�X�E����;����=Ɲ�f��_0�ߝfw�!E����A[;���ڕ�^�W"���s5֚?�=�+9@��j������b���VZ^�ltp��f+����Z�6��j�`�L��Za�I��N�0W���Z����:g��WWjs�#�Y��"�k5m�_���sh\���F%p䬵�6������\h2lNs�V��#�t�� }�K���Kvzs�>9>�l�+�>��^�n����~Ěg���e~%�w6ɓ������y��h�DC���b�KG-�d��__'0�{�7����&��yFD�2j~�����ټ�_��0�#��y�9��P�?���������f�fj6͙��r�V�K�{[ͮ�;4)O/��az{�<><__����G����[�0���v��G?e��������:���١I���z�M�Wۋ�x���������u�/��]1=��s��E&�q�l�-P3�{�vI�}��f��}�~��r�r�k�8�{���υ����O�֌ӹ�/�>�}�t	��|���Úq&���ݟW����ᓟwk�9���c̊l��Ui�̸z��f��i���_�j�S-|��w�J�<LծT��-9�����I�®�6 *3��y�[�.Ԗ�K��J���<�ݿ��-t�J���E�63���1R��}Ғbꨝט�l?�#���ӴQ��.�S���U
v�&�3�&O���0�9-�O�kK��V_gn��k��U_k˂�4�9�v�I�:;�w&��Q�ҍ�
��fG��B��-����ÇpNk�sZM�s���*��g8��-���V`b����H���
3cU'0hR
�w�XŁ�K݊�MV]�} o�w�tJJ���$꜁x$��l$>�F�EF�޺�G�j�#�G�t�bjj�F�б��q:�`O�4�y�8`Av<�x`��&I[��'A�˚�5��KAn��jx ��=Kn@��t����)�9��=�ݷ�tI��d\�M�j�B�${��G����VX�V6��f�#��V�wk ��W�8�	����lCDZ���ϖ@���X��x�W�Utq�ii�D($�X��Z'8Ay@�s�<�x͡�PU"rB�Q�_�Q6    [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cljx01tg2ahck"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
                extends Node3D

@export var rotation_speed = 3.0
@onready var ball = get_node("../Ball")
@onready var ai_controller = $AIController3D

func _ready():
	ai_controller.init(self)

func game_over():
	ai_controller.done = true
	ai_controller.needs_reset = true

func _physics_process(delta):
	if ai_controller.needs_reset:
		ai_controller.reset()
		ball.reset()
		return
		
	var movement : float
	if ai_controller.heuristic == "human":
		movement = Input.get_axis("rotate_anticlockwise", "rotate_clockwise")
	else:
		movement = ai_controller.move_action
	rotate_y(movement*delta*rotation_speed)


func _on_area_3d_body_entered(body):
	ai_controller.reward += 1.0
              RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    lightmap_size_hint 	   material    custom_aabb    flip_faces    add_uv2    uv2_padding    size    subdivide_width    subdivide_height    subdivide_depth    script    custom_solver_bias    margin 	   _bundled       Script    res://Player.gd ��������   Script    res://controller.gd ��������      local://BoxMesh_f8u8m e         local://BoxShape3D_t8373 �         local://BoxShape3D_icghh �         local://PackedScene_vbll0 �         BoxMesh             @���=���=         BoxShape3D             @���=���=         BoxShape3D          ff@��>��>         PackedScene          	         names "         Player    script    Node3D    MeshInstance3D 
   transform    mesh    StaticBody3D    CollisionShape3D    shape    Area3D    AIController3D    reset_after    AGENT    _on_area_3d_body_entered    body_entered    	   variants                      �?              �?              �?           @                                              node_count             nodes     D   ��������       ����                            ����                                 ����                          ����                     	   	   ����                          ����                        
   ����                           conn_count             conns                                      node_paths              editable_instances              version             RSRC             RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script %   res://addons/godot_rl_agents/sync.gd ��������   PackedScene    res://game.tscn �=J�,      local://PackedScene_0bycw H         PackedScene          	         names "         Train    Node3D    Sync    script    onnx_model_path    action_repeat    agents_number    Node    Game    Game2 
   transform    Game3    Game4    Game5    Game6    Game7    Game8 	   Camera3D    current    	   variants                       RingPong_50K.onnx                           �?              �?              �?  0A             �?              �?              �?          0A     �?              �?              �?  0A      0A     �?              �?              �?          ��     �?              �?              �?  0A      ��     �?              �?              �?          0�     �?              �?              �?  0A      0�     �?            1�;�  �?      ��1�;�33�@��A3��            node_count             nodes     g   ��������       ����                      ����                                        ���                      ���	         
                  ���         
                  ���         
                  ���         
                  ���         
   	               ���         
   
               ���         
                        ����   
                      conn_count              conns               node_paths              editable_instances              version             RSRC               [remap]

path="res://.godot/exported/133200997/export-5127fc3fc2907f1e87ac8e869558593d-ExampleRaycastSensor2D.scn"
             [remap]

path="res://.godot/exported/133200997/export-7454c66d21916090bf5dc7766fa8629a-RaycastSensor2D.scn"
    [remap]

path="res://.godot/exported/133200997/export-1222b1ceeacbc57c3f8fe0e4235d9be0-ExampleRaycastSensor3D.scn"
             [remap]

path="res://.godot/exported/133200997/export-1cc1ad7ce1f98ed0c4cee4b060bc26fd-RaycastSensor3D.scn"
    [remap]

path="res://.godot/exported/133200997/export-d1d9cc1906d18d9a32f853b74a4d90f4-RGBCameraSensor3D.scn"
  [remap]

path="res://.godot/exported/133200997/export-609f762188a68253d349ec58c4f3a8d3-game.scn"
               [remap]

path="res://.godot/exported/133200997/export-36a25e342948d0ceacc500772b5412b3-player.scn"
             [remap]

path="res://.godot/exported/133200997/export-5dd17fe71e6f2c7ad1291784df6a68a9-train.scn"
              list=Array[Dictionary]([{
"base": &"Node2D",
"class": &"AIController2D",
"icon": "",
"language": &"GDScript",
"path": "res://addons/godot_rl_agents/controller/ai_controller_2d.gd"
}, {
"base": &"Node3D",
"class": &"AIController3D",
"icon": "",
"language": &"GDScript",
"path": "res://addons/godot_rl_agents/controller/ai_controller_3d.gd"
}, {
"base": &"ISensor2D",
"class": &"GridSensor2D",
"icon": "",
"language": &"GDScript",
"path": "res://addons/godot_rl_agents/sensors/sensors_2d/GridSensor2D.gd"
}, {
"base": &"ISensor3D",
"class": &"GridSensor3D",
"icon": "",
"language": &"GDScript",
"path": "res://addons/godot_rl_agents/sensors/sensors_3d/GridSensor3D.gd"
}, {
"base": &"Node2D",
"class": &"ISensor2D",
"icon": "",
"language": &"GDScript",
"path": "res://addons/godot_rl_agents/sensors/sensors_2d/ISensor2D.gd"
}, {
"base": &"Node3D",
"class": &"ISensor3D",
"icon": "",
"language": &"GDScript",
"path": "res://addons/godot_rl_agents/sensors/sensors_3d/ISensor3D.gd"
}, {
"base": &"Node3D",
"class": &"RGBCameraSensor3D",
"icon": "",
"language": &"GDScript",
"path": "res://addons/godot_rl_agents/sensors/sensors_3d/RGBCameraSensor3D.gd"
}, {
"base": &"ISensor3D",
"class": &"RayCastSensor3D",
"icon": "",
"language": &"GDScript",
"path": "res://addons/godot_rl_agents/sensors/sensors_3d/RaycastSensor3D.gd"
}, {
"base": &"ISensor2D",
"class": &"RaycastSensor2D",
"icon": "",
"language": &"GDScript",
"path": "res://addons/godot_rl_agents/sensors/sensors_2d/RaycastSensor2D.gd"
}])
            <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><g transform="translate(32 32)"><path d="m-16-32c-8.86 0-16 7.13-16 15.99v95.98c0 8.86 7.13 15.99 16 15.99h96c8.86 0 16-7.13 16-15.99v-95.98c0-8.85-7.14-15.99-16-15.99z" fill="#363d52"/><path d="m-16-32c-8.86 0-16 7.13-16 15.99v95.98c0 8.86 7.13 15.99 16 15.99h96c8.86 0 16-7.13 16-15.99v-95.98c0-8.85-7.14-15.99-16-15.99zm0 4h96c6.64 0 12 5.35 12 11.99v95.98c0 6.64-5.35 11.99-12 11.99h-96c-6.64 0-12-5.35-12-11.99v-95.98c0-6.64 5.36-11.99 12-11.99z" fill-opacity=".4"/></g><g stroke-width="9.92746" transform="matrix(.10073078 0 0 .10073078 12.425923 2.256365)"><path d="m0 0s-.325 1.994-.515 1.976l-36.182-3.491c-2.879-.278-5.115-2.574-5.317-5.459l-.994-14.247-27.992-1.997-1.904 12.912c-.424 2.872-2.932 5.037-5.835 5.037h-38.188c-2.902 0-5.41-2.165-5.834-5.037l-1.905-12.912-27.992 1.997-.994 14.247c-.202 2.886-2.438 5.182-5.317 5.46l-36.2 3.49c-.187.018-.324-1.978-.511-1.978l-.049-7.83 30.658-4.944 1.004-14.374c.203-2.91 2.551-5.263 5.463-5.472l38.551-2.75c.146-.01.29-.016.434-.016 2.897 0 5.401 2.166 5.825 5.038l1.959 13.286h28.005l1.959-13.286c.423-2.871 2.93-5.037 5.831-5.037.142 0 .284.005.423.015l38.556 2.75c2.911.209 5.26 2.562 5.463 5.472l1.003 14.374 30.645 4.966z" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 919.24059 771.67186)"/><path d="m0 0v-47.514-6.035-5.492c.108-.001.216-.005.323-.015l36.196-3.49c1.896-.183 3.382-1.709 3.514-3.609l1.116-15.978 31.574-2.253 2.175 14.747c.282 1.912 1.922 3.329 3.856 3.329h38.188c1.933 0 3.573-1.417 3.855-3.329l2.175-14.747 31.575 2.253 1.115 15.978c.133 1.9 1.618 3.425 3.514 3.609l36.182 3.49c.107.01.214.014.322.015v4.711l.015.005v54.325c5.09692 6.4164715 9.92323 13.494208 13.621 19.449-5.651 9.62-12.575 18.217-19.976 26.182-6.864-3.455-13.531-7.369-19.828-11.534-3.151 3.132-6.7 5.694-10.186 8.372-3.425 2.751-7.285 4.768-10.946 7.118 1.09 8.117 1.629 16.108 1.846 24.448-9.446 4.754-19.519 7.906-29.708 10.17-4.068-6.837-7.788-14.241-11.028-21.479-3.842.642-7.702.88-11.567.926v.006c-.027 0-.052-.006-.075-.006-.024 0-.049.006-.073.006v-.006c-3.872-.046-7.729-.284-11.572-.926-3.238 7.238-6.956 14.642-11.03 21.479-10.184-2.264-20.258-5.416-29.703-10.17.216-8.34.755-16.331 1.848-24.448-3.668-2.35-7.523-4.367-10.949-7.118-3.481-2.678-7.036-5.24-10.188-8.372-6.297 4.165-12.962 8.079-19.828 11.534-7.401-7.965-14.321-16.562-19.974-26.182 4.4426579-6.973692 9.2079702-13.9828876 13.621-19.449z" fill="#478cbf" transform="matrix(4.162611 0 0 -4.162611 104.69892 525.90697)"/><path d="m0 0-1.121-16.063c-.135-1.936-1.675-3.477-3.611-3.616l-38.555-2.751c-.094-.007-.188-.01-.281-.01-1.916 0-3.569 1.406-3.852 3.33l-2.211 14.994h-31.459l-2.211-14.994c-.297-2.018-2.101-3.469-4.133-3.32l-38.555 2.751c-1.936.139-3.476 1.68-3.611 3.616l-1.121 16.063-32.547 3.138c.015-3.498.06-7.33.06-8.093 0-34.374 43.605-50.896 97.781-51.086h.066.067c54.176.19 97.766 16.712 97.766 51.086 0 .777.047 4.593.063 8.093z" fill="#478cbf" transform="matrix(4.162611 0 0 -4.162611 784.07144 817.24284)"/><path d="m0 0c0-12.052-9.765-21.815-21.813-21.815-12.042 0-21.81 9.763-21.81 21.815 0 12.044 9.768 21.802 21.81 21.802 12.048 0 21.813-9.758 21.813-21.802" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 389.21484 625.67104)"/><path d="m0 0c0-7.994-6.479-14.473-14.479-14.473-7.996 0-14.479 6.479-14.479 14.473s6.483 14.479 14.479 14.479c8 0 14.479-6.485 14.479-14.479" fill="#414042" transform="matrix(4.162611 0 0 -4.162611 367.36686 631.05679)"/><path d="m0 0c-3.878 0-7.021 2.858-7.021 6.381v20.081c0 3.52 3.143 6.381 7.021 6.381s7.028-2.861 7.028-6.381v-20.081c0-3.523-3.15-6.381-7.028-6.381" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 511.99336 724.73954)"/><path d="m0 0c0-12.052 9.765-21.815 21.815-21.815 12.041 0 21.808 9.763 21.808 21.815 0 12.044-9.767 21.802-21.808 21.802-12.05 0-21.815-9.758-21.815-21.802" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 634.78706 625.67104)"/><path d="m0 0c0-7.994 6.477-14.473 14.471-14.473 8.002 0 14.479 6.479 14.479 14.473s-6.477 14.479-14.479 14.479c-7.994 0-14.471-6.485-14.471-14.479" fill="#414042" transform="matrix(4.162611 0 0 -4.162611 656.64056 631.05679)"/></g></svg>
     ��KS�gfK   res://addons/godot_rl_agents/sensors/sensors_2d/ExampleRaycastSensor2D.tscnUd9y1�tD   res://addons/godot_rl_agents/sensors/sensors_2d/RaycastSensor2D.tscn�����)K   res://addons/godot_rl_agents/sensors/sensors_3d/ExampleRaycastSensor3D.tscn��*[�� BD   res://addons/godot_rl_agents/sensors/sensors_3d/RaycastSensor3D.tscn�f!�q�#!F   res://addons/godot_rl_agents/sensors/sensors_3d/RGBCameraSensor3D.tscn,�\g{#52%   res://addons/godot_rl_agents/icon.png��绕:i+   res://assets/peppermint_powerplant_2_1k.hdr�=J�,   res://game.tscnw(���:M   res://icon.svg�wI����w   res://player.tscn5	o+��@   res://train.tscn      ECFG      application/config/name         RingPong-Final     application/config/tags   "      	   godot_rl       application/run/main_scene         res://train.tscn   application/config/features$   "         4.2    Forward Plus       application/config/icon         res://icon.svg  "   display/window/size/viewport_width         #   display/window/size/viewport_height            editor_plugins/enabled4   "      (   res://addons/godot_rl_agents/plugin.cfg    input/rotate_anticlockwise�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   A   	   key_label             unicode           echo          script         input/rotate_clockwise�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   D   	   key_label             unicode           echo          script      /   rendering/anti_aliasing/quality/screen_space_aa             