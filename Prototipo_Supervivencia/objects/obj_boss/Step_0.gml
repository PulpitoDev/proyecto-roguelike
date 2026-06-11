if (estado == "perseguir") {
    if (instance_exists(obj_player)) {
        // Usamos "boss_speed" en lugar de un número fijo
        move_towards_point(obj_player.x, obj_player.y, boss_speed);
    }
}