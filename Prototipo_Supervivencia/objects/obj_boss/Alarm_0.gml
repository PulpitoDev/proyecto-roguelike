if (estado == "perseguir") {
    estado = "preparar";
    speed = 0; 
    alarm[0] = 40; 
    
} else if (estado == "preparar") {
    estado = "embestir";
    if (instance_exists(obj_player)) {
        direction = point_direction(x, y, obj_player.x, obj_player.y);
    }
    speed = dash_speed;     
    alarm[0] = 30; 
    
} else if (estado == "embestir") {
    estado = "perseguir";
    speed = 0;
    alarm[0] = 120; 
}