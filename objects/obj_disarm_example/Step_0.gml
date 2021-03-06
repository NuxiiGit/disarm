/// @desc Update mesh.
animationBlend += animationSpeed;
if (mouse_check_button(mb_left)) {
     // using the mouse position for the animation time,
     // not required, but used to view the animation at a specific point
     animationBlend = mouse_x / room_width;
}
if (animationBlend > 1 || animationBlend < 0) {
    animationBlend = ((animationBlend % 1) + 1) % 1;
}
repeat (iterations) { // not required, but tests performance of the animations
    disarm_animation_begin(arm);
    if (disarm_animation_exists(arm, animationIdx)) {
        disarm_animation_add(arm, animationIdx, animationBlend);
    }
    disarm_animation_end(arm);
    disarm_mesh_begin(mesh);
    disarm_mesh_add_armature(mesh, arm, offsetX, offsetY, scale, scale);
    disarm_mesh_end(mesh);
}