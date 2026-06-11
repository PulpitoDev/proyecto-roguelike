// 1. Controles y Movimiento
var _left = keyboard_check(ord("A"));
var _right = keyboard_check(ord("D"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

var _h = _right - _left;
var _v = _down - _up;

// Corregir velocidad en diagonal
if (_h != 0 and _v != 0) {
    _h = _h * 0.707;
    _v = _v * 0.707;
}

var _target_h = _h * walk_speed;
var _target_v = _v * walk_speed;

hspd = lerp(hspd, _target_h, 0.2);
vspd = lerp(vspd, _target_v, 0.2);

x = clamp(x + hspd, 0, room_width);
y = clamp(y + vspd, 0, room_height);

// 2. Disparo Manual
if (cooldown > 0) {
    cooldown -= 1;
}

Pistola.x = x + pistola_x-10;
Pistola.y = y + pistola_y+25;

if (mouse_check_button(mb_left) and cooldown <= 0) {
    instance_create_layer(x, y, "Instances", obj_bullet);
    cooldown = 15; 
}