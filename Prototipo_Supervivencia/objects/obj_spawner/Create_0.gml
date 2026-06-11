jefe_aparecio = false;

// 1. SOLO reiniciamos las bajas si estamos empezando el juego desde el Nivel 1
if (room == Room1) {
    global.kills = 0; 
}

// 2. CONFIGURACIÓN DE NIVELES (Dificultad escalable)
if (room == Room1) {
    kills_para_jefe = 10; 
    limite_pantalla = 20; // Máximo de monstruos a la vez
    tiempo_spawn = 60;    // Aparecen cada 1 segundo (60 frames)
    cantidad_spawn = 1;   // Aparece 1 por vez
} 
else if (room == Room2) {
    kills_para_jefe = 25; // 20 del nivel 1 + 40 nuevos
    limite_pantalla = 40; 
    tiempo_spawn = 45;    // Más rápido
    cantidad_spawn = 2;   // Aparecen de a 2
}
else if (room == Room3) {
    kills_para_jefe = 45; 
    limite_pantalla = 70;
    tiempo_spawn = 30;    // Cada medio segundo
    cantidad_spawn = 3;   // Aparecen de a 3 (¡enjambre!)
}
else if (room == Room4) {
    kills_para_jefe = 70;
    limite_pantalla = 100;
    tiempo_spawn = 20;
    cantidad_spawn = 4;
}
else if (room == Room5) {
    kills_para_jefe = 100;
    limite_pantalla = 150; // ¡Pantalla llena!
    tiempo_spawn = 15;     // Casi ininterrumpido
    cantidad_spawn = 5;
}

// Iniciar el reloj de aparición
alarm[0] = tiempo_spawn;