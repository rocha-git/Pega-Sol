if (o_Player.carregando_sol && o_Player.sol_pegado == id) {
    var newX = o_Player.x - 31.5; 
    var newY = o_Player.y - 50;

    // Testa colisão horizontal
    if (place_meeting(newX, y, o_Wall)) {
        while (!place_meeting(x + sign(newX - x), y, o_Wall)) {
            x += sign(newX - x);
        }
    } else {
        x = newX;
    }

    // Testa colisão vertical
    if (place_meeting(x, newY, o_Wall)) {
        while (!place_meeting(x, y + sign(newY - y), o_Wall)) {
            y += sign(newY - y);
        }
    } else {
        y = newY;
    }
}

if (o_Player.carregando_sol && o_Player.sol_pegado == id) {
    // Segue o Player
    x = o_Player.x - 31.5; 
    y = o_Player.y - 50;

    // Verifica se está perto o suficiente do Girassol
    var dist = point_distance(x, y, o_Girassol.x, o_Girassol.y);
    if (dist < 40) { // Ajuste esse valor para uma entrega mais "fácil"
        // Entrega o sol
        o_Girassol.hp = min(o_Girassol.hp + 10, o_Girassol.hp_max);
        o_Player.carregando_sol = false;
        o_Player.sol_pegado = noone;

        // Some com o Sol e programa o respawn
        x = -100;
        y = -100;
        alarm[0] = 60;
    }
}

