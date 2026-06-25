jefe_aparecio = false;

// Reiniciamos las bajas SOLO si estamos empezando desde el Nivel 1
if (room == Room1) {
    global.kills = 0; 
}

// Configuración adaptativa de 3 niveles
if (room == Room1) {
    kills_para_jefe = 20;     
    limite_pantalla = 20; 
    tiempo_spawn = 60;    
    cantidad_spawn = 1;   
} 
else if (room == Room2) {
    kills_para_jefe = 35;     
    limite_pantalla = 40; 
    tiempo_spawn = 45;    
    cantidad_spawn = 2;   
}
else if (room == Room3) {
    kills_para_jefe = 55;     
    limite_pantalla = 70;
    tiempo_spawn = 30;    
    cantidad_spawn = 3;   
}

// Iniciar el reloj
alarm[0] = tiempo_spawn;