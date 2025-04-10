if (o_Player.carregando_sol && o_Player.sol_pegado != noone) {
    // Destroi o Sol que estava com o player
    instance_destroy(o_Player.sol_pegado);

    // Spawna um novo Sol em uma posição aleatória
    var spawnX = irandom_range(0, 640);
    var spawnY = irandom_range(0, 360);
    instance_create_depth(spawnX, spawnY, 0, o_Sol);

    // Reseta a variável do player
    o_Player.carregando_sol = false;
    o_Player.sol_pegado = noone;
	  // Regenera uma quantidade de HP (ajuste conforme necessário)
    hp += 20;
	  // Garante que o HP não ultrapasse o máximo
    hp = min(hp, hp_max); 
}