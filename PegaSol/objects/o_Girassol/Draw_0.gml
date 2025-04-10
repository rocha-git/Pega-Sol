draw_self()

// Tamanho máximo da barra
var bar_width = 50;
var bar_height = 8;

// Garante que a barra tenha no mínimo 1 pixel para evitar problemas
var hp_percent = max(0, hp / hp_max);
var bar_fill = max(1, bar_width * hp_percent); 

// Posição da barra (fixa a origem para sempre começar no mesmo ponto)
var bx = x - bar_width / 2;
var by = y - 40;

// Definir cor com base no HP
if (hp_percent > 0.6) {
    draw_set_color(c_green);
} else if (hp_percent > 0.3) {
    draw_set_color(c_yellow);
} else {
    draw_set_color(c_red);
}

// Desenhar a barra preenchida (sempre crescendo para a direita)
draw_rectangle(bx, by, bx + bar_fill, by + bar_height, false);

// Contorno da barra
draw_set_color(c_black);
draw_rectangle(bx, by, bx + bar_width, by + bar_height, true);
