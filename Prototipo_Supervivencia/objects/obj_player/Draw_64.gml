
draw_set_color(c_white);


draw_text(20, 20, "Vida: " + string(hp));


draw_text(20, 40, "Bajas: " + string(global.kills));



if (instance_exists(obj_boss)) {
    draw_set_color(c_red);
    draw_text(20, 60, "¡EL JEFE HA APARECIDO!");
}