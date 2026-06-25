if (room == Room1 or room == Room3) {
    if (estado == "perseguir") {
        estado = "preparar";
        speed = 0; 
        alarm[0] = 40; // Pausa antes de atacar
        
    } else if (estado == "preparar") {
        estado = "embestir";
        if (instance_exists(obj_player)) {
            direction = point_direction(x, y, obj_player.x, obj_player.y);
        }
        speed = dash_speed;     
        alarm[0] = 30; // Duración de la embestida a alta velocidad
        
    } else if (estado == "embestir") {
        estado = "perseguir";
        speed = 0;
        alarm[0] = 120; // Descanso antes de volver a intentar embestirte
    }
}