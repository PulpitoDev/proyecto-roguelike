if (room == Room1) {
    sprite_index = spr_enemy1; 
    hp = 1;      // Muere de 1 tiro
    spd = 2;     // Velocidad normal
} 
else if (room == Room2) {
    sprite_index = spr_enemy3;
    hp = 1;      // Aguanta 2 tiros
    spd = 2.5;   // Es un poco más rápido
}
else if (room == Room3) {
    sprite_index = spr_enemy3;
    hp = 1;      // Aguanta 3 tiros
    spd = 3;     // Es muy rápido
}