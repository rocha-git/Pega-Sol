if (!o_Player.carregando_sol) { 
    o_Player.carregando_sol = true;
    o_Player.sol_pegado = id; // Guarda a referência do Sol

    // Faz o Sol seguir o Player
    x = o_Player.x;
    y = o_Player.y;
}
