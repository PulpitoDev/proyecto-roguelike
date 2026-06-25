if (dash_cooldown_timer > 0) {
    dash_cooldown_timer -= 1;
}

if (dash_timer > 0) {
    dash_timer -= 1;
    hspd = dash_h * dash_speed;
    vspd = dash_v * dash_speed;
} 

else {
    var _left = keyboard_check(ord("A"));
    var _right = keyboard_check(ord("D"));
    var _up = keyboard_check(ord("W"));
    var _down = keyboard_check(ord("S"));

    var _h = _right - _left;
    var _v = _down - _up;


    if (_h != 0 and _v != 0) {
        _h = _h * 0.707;
        _v = _v * 0.707;
    }

    var _target_h = _h * walk_speed;
    var _target_v = _v * walk_speed;

    hspd = lerp(hspd, _target_h, 0.2);
    vspd = lerp(vspd, _target_v, 0.2);

    // --- DETECTAR ACTIVACIÓN DEL DASH (Barra Espaciadora) ---
    if (keyboard_check_pressed(vk_space) and dash_cooldown_timer <= 0) {
        // Solo se puede activar si el jugador está presionando alguna tecla de movimiento
        if (_h != 0 or _v != 0) {
            dash_timer = dash_duration;          
            dash_cooldown_timer = dash_cooldown;  
            
           
            dash_h = _h;
            dash_v = _v;
        }
    }
}


x = clamp(x + hspd, 0, room_width);
y = clamp(y + vspd, 0, room_height);



if (cooldown > 0) {
    cooldown -= 1;
}

Pistola.x = x + pistola_x -10;
Pistola.y = y + pistola_y + 60;

if (mouse_check_button(mb_left) and cooldown <= 0) {
    instance_create_layer(x, y, "Instances", obj_bullet);
    cooldown = 15; 
}