// Solo recibe daño si todavía está vivo
if (hp > 0) {
    hp -= 1;
    instance_destroy(other); // Destruye la bala que lo tocó

    // Si la vida acaba de llegar a exactamente 0
    if (hp == 0) {
        instance_destroy(); // El jefe desaparece
        room_goto_next();   // Pasamos de nivel de forma segura
    }
}