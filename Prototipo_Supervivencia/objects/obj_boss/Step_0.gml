// SOLO los Jefes 1 y 3 tienen permiso para perseguirte
if (room == Room1 or room == Room3) {
    if (estado == "perseguir") {
        if (instance_exists(obj_player)) {
            move_towards_point(obj_player.x, obj_player.y, boss_speed);
        }
    }
}

// El Jefe 2 se queda clavado en su posición permanentemente
if (room == Room2) {
    speed = 0; 
}