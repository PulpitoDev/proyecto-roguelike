// 1. Le restamos 1 de vida al enemigo tocado
other.hp -= 1;

// 2. La bala se destruye al impactar
instance_destroy(); 

// 3. Revisamos si el enemigo se quedó sin vida tras el impacto
if (other.hp <= 0) {
    instance_destroy(other); // Destruimos al enemigo
    global.kills += 1;       // Sumamos la baja a tu marcador global
}