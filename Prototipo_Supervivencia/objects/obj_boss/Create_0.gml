estado = "perseguir";
murio = false; 



if (room == Room1) {
    sprite_index = spr_boss1;  
    hp = 20;                   
    boss_speed = 3.5;          
    dash_speed = 12;           
    alarm[0] = 120;            
} 
else if (room == Room2) {
    sprite_index = spr_boss2;
    hp = 120;                  
    boss_speed = 0;            
    speed = 0;   
    
    
    angulo_disparo = 0;              
    tipo_disparo = 0;   
    
    alarm[1] = 15; 
}
else if (room == Room3) {
    sprite_index = spr_boss3;  
    hp = 70;
    boss_speed = 2.5;            
    dash_speed = 10;            
    alarm[0] = 120;            
    alarm[1] = 40;             
    alarm[2] = 80;             
}      