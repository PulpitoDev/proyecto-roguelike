if (audio_is_playing(sonido_inicio)) {
    audio_stop_sound(sonido_inicio);
}

sonido_bucle = audio_play_sound_ext({
    sound: OST,
    priority: 1, 
    loop: true,
    offset: fin
});


audio_sound_loop_start(sonido_bucle, fin);
audio_sound_loop_end(sonido_bucle, bucle_fin);