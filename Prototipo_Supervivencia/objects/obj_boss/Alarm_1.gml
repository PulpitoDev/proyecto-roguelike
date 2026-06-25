if (room == Room2) {
    
   
    if (tipo_disparo == 0) {
        for (var i = 0; i < 4; i += 1) {
            var _bullet = instance_create_layer(x, y, "Instances", obj_boss_bullet);
            _bullet.direction = angulo_disparo + (i * 90); 
            _bullet.speed = 4;
            _bullet.sprite_index = spr_boss_bullet2; 
        }
        
        angulo_disparo += 22; 
        tipo_disparo = 1;     
    }
    

    else if (tipo_disparo == 1) {
        for (var i = 0; i < 4; i += 1) {
            var _bullet = instance_create_layer(x, y, "Instances", obj_boss_bullet);
           
            _bullet.direction = 45 + (i * 90); 
            _bullet.speed = 5.5; 
            _bullet.sprite_index = spr_boss_bullet2; 
        }
        
        tipo_disparo = 0;     
    }
    

    alarm[1] = 15; 
}
else if (room == Room3) {
   
    if (instance_exists(obj_player)) {
        var _bullet = instance_create_layer(x, y, "Instances", obj_boss_bullet);
        _bullet.direction = point_direction(x, y, obj_player.x, obj_player.y);
        _bullet.speed = 6;
        _bullet.sprite_index = spr_boss_bullet3; 
    }
    alarm[1] = 50; 
}