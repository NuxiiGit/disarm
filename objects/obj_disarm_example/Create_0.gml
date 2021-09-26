do {
    path = get_string("type the path of the armature to load", "armature") + ".scon";
} until (file_exists(path));
arm = disarm_import(path);
mesh = disarm_mesh_create();
scale = 1;
offsetX = room_width / 2;
offsetY = room_height / 1.25;
animationBlend = 0;
animationSpeed = 0.01;
debugOverlay = false;
boneOverlay = false;
iterations = 1;
animationIdx = 0;
skinIdx = -1;