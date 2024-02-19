# GodotRL Web

based on https://github.com/edbeeching/godot_rl_agents

Godot Rl support for web to play and use in the browser.

To watch web demo => (will take ~20 sec to load) https://technolukas.github.io/godotrl-web-webapp/

---

# Changes I made in plugin:
## - `sync.gd`

![image](https://github.com/TechnoLukas/godotrl-web/assets/110934679/d3c9bbef-0b05-44b5-b48d-83acc8fadd80)


### parameters

`speed_up`
Physics speed up

`onnx_model_path`
Onnx Model relative Path. (MUST be in the same folder with executable or index.html) for example: model_name.onnx

`action_repeat`
How many times action should be repeated after agent chose action.

`agents_number`
Amount of agents on the scene that uses this model

## - `Content`
Completly removed any sign of .NET

So this project is not .NET dependent

## minimal-onnxruntime.html
![image](https://github.com/TechnoLukas/godotrl-web/assets/110934679/d441a1a5-a1f1-45b8-8e0d-d5169e651155)

"Custom HTML Shell"

for simpler explanation I used [minimal.html](https://docs.godotengine.org/en/stable/tutorials/platform/web/customizing_html5_shell.html) instead of full, that is why there is a white screen, and no loading indicator.

