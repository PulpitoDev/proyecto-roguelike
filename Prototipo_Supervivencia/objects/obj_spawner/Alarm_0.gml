if (jefe_aparecio == false) {
    
    if (instance_number(obj_enemy) < max_enemies) {
        
        // Repetir la creación X veces (1, 2, 3, 4 o 5 dependiendo del nivel)
        repeat(cantidad_spawn) {
            var _x = random_range(0, room_width);
            var _y = random_range(0, room_height);
            instance_create_layer(_x, _y, "Instances", obj_enemy);
        }
    }
    
    // Reactivamos la alarma usando la velocidad del nivel actual
    alarm[0] = tiempo_spawn; 
}