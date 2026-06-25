
other.hp -= 1;


instance_destroy(); 


if (other.hp <= 0) {
    
    with (obj_enemy) instance_destroy();
    with (obj_boss) instance_destroy();
    with (obj_bullet) instance_destroy();
    with (obj_boss_bullet) instance_destroy();
    
  
    game_restart();
}