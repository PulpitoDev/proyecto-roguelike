estado = "perseguir";
alarm[0] = 120;

// --- CONFIGURACIÓN DE JEFES POR NIVEL ---

if (room == Room1) {
    sprite_index = spr_boss1;  // Cambia su dibujo automáticamente
    hp = 20;                   // Vida baja para el primer nivel
    boss_speed = 1.5;          // Velocidad normal
    dash_speed = 7;            // Embestida moderada
} 
else if (room == Room2) {
    sprite_index = spr_boss2;
    hp = 40;                   // Más tanque
    boss_speed = 2;            // Más rápido caminando
    dash_speed = 9;
}
else if (room == Room3) {
    sprite_index = spr_boss3;
    hp = 60;
    boss_speed = 1;            // Un jefe muy lento...
    dash_speed = 14;           // ...¡pero con una embestida hiper veloz!
}
else if (room == Room4) {
    sprite_index = spr_boss4;
    hp = 85;
    boss_speed = 2.5;          // Te persigue muy de cerca
    dash_speed = 10;
}
else if (room == Room5) {
    sprite_index = spr_boss5;  // El Gran Jefe Final
    hp = 130;                  // Mucha vida
    boss_speed = 2.2;
    dash_speed = 12;
}