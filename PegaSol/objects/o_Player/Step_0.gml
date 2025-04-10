var tecla_cima = keyboard_check(ord("W"));
var tecla_baixo = keyboard_check(ord("S"));
var tecla_esquerda = keyboard_check(ord("A"));
var tecla_direita = keyboard_check(ord("D"));

var tecla = tecla_direita - tecla_esquerda != 0 || tecla_baixo - tecla_cima != 0;

dir = point_direction(0,0,tecla_direita - tecla_esquerda,tecla_baixo - tecla_cima);

velh = lengthdir_x(velc * tecla,dir);
velv = lengthdir_y(velc * tecla,dir);

// COLISÃO COM O_Wall E O_Girassol (horizontal)
if (place_meeting(x + velh, y, o_Wall) || place_meeting(x + velh, y, o_Girassol)) {
    while (!place_meeting(x + sign(velh), y, o_Wall) && !place_meeting(x + sign(velh), y, o_Girassol)) {
        x += sign(velh);
    }
    velh = 0;
}

x += velh;

// COLISÃO COM O_Wall E O_Girassol (vertical)
if (place_meeting(x, y + velv, o_Wall) || place_meeting(x, y + velv, o_Girassol)) {
    while (!place_meeting(x, y + sign(velv), o_Wall) && !place_meeting(x, y + sign(velv), o_Girassol)) {
        y += sign(velv);
    }
    velv = 0;
}

y += velv;
