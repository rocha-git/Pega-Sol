target = o_Girassol; // O Bird sempre quer ir até o Girassol
speed = 1.5; // Velocidade de voo
hp_drain = 0.1; // Quanto de HP ele suga por step

// Garante que tem um Girassol no jogo antes de spawna-lo
if (!instance_exists(o_Girassol)) {
    instance_destroy();
}

// Spawna em um canto aleatório da tela
var side = irandom(3);
switch (side) {
    case 0: x = irandom_range(0, 640); y = -20; break; // Topo
    case 1: x = irandom_range(0, 640); y = 380; break;  // Baixo
    case 2: x = -20; y = irandom_range(0, 360); break; // Esquerda
    case 3: x = 660; y = irandom_range(0, 360); break; // Direita
}
