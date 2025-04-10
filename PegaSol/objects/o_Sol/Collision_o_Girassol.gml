if (o_Player.carregando_sol && o_Player.sol_pegado == id) {
    // Recupera HP do Girassol
    o_Girassol.hp = min(o_Girassol.hp + 10, o_Girassol.hp_max);

    // Libera o Sol do jogador
    o_Player.carregando_sol = false;
    o_Player.sol_pegado = noone;

    // Desativa o Sol temporariamente
    x = -100;
    y = -100;

    // Aguarda 1 segundo para respawnar
    alarm[0] = 60;
	
	// Respawn dentro da área segura
	x = irandom_range(32, 608); // considerando 640 de largura com bordas de 16px
	y = irandom_range(32, 328); // considerando 360 de altura com bordas de 16px

}
