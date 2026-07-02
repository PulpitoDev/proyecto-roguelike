// La cantidad de enemigos escala con tus bajas, pero de forma más suave
max_enemies = 5 + (global.kills / 2); 

// Evitar superar el límite que configuramos para cada sala
if (max_enemies > limite_pantalla) {
    max_enemies = limite_pantalla; 
}

// Invocar al Jefe
if (global.kills >= kills_para_jefe and jefe_aparecio == false) {
    jefe_aparecio = true; 
    
    // Crear al jefe en el centro de la sala
    instance_create_layer(obj_player.x + 250, obj_player.y + 250, "Instances", obj_boss);
    
    // Destruir monstruos pequeños restantes
    with (obj_enemy) {
        instance_destroy();
    }
}