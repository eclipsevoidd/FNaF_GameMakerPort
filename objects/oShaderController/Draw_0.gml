var _cam = view_camera[0];
var _w = camera_get_view_width(_cam);
var _h = camera_get_view_height(_cam);

// Create surface
if (!surface_exists(office_surf)) {
    office_surf = surface_create(_w, _h);
}

// Draw office layer objects to surface
surface_set_target(office_surf);
draw_clear_alpha(c_black, 0);

with (oOffice) draw_self();
with (oFan) draw_self();
with (oDoorButtonsLeft) draw_self();
with (oDoorButtonsRight) draw_self();
with (oLeftDoor) draw_self();
with (oRightDoor) draw_self();
// Add any other Office layer objects here

surface_reset_target();

// Draw the surface with shader
shader_set(shd_perspective);
draw_surface(office_surf, 0, 0);
shader_reset();