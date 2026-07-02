comienzo = 33;
fin = 62.3;
duracion = fin - comienzo;
sonido_inicio = audio_play_sound_ext({
	sound: OST,
	priority: 1, 
	loop: false, 
    offset: comienzo
});
alarm[0] = duracion * game_get_speed(gamespeed_fps);

bucle_fin = 83.9;