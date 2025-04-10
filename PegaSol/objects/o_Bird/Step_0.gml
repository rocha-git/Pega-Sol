if (instance_exists(target)) {
    move_towards_point(target.x, target.y, speed);

    // Se estiver perto do Girassol, começa a sugar HP
    if (point_distance(x, y, target.x, target.y) < 10) {
        target.hp -= hp_drain;
    }
}

if (place_meeting(x + hspeed, y + vspeed, o_Girassol)) {
    // Se o próximo movimento resultar em colisão com o Girassol, cancela o movimento
    hspeed = 0;
    vspeed = 0;
}

