hp -= 1;
instance_destroy(other);

if (hp <= 0) {
    instance_destroy();
    room_goto_next(); // Pasa a la Room2
}