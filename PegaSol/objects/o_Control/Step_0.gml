if (tempo > 0) {
    tempo -= 1 / room_speed; // Diminui 1 segundo a cada "room_speed" frames
} else {
    if (instance_exists(o_Girassol) && o_Girassol.hp > 0) {
        show_message("Você venceu! O girassol sobreviveu!");
    } else {
        show_message("O tempo acabou! O girassol morreu...");
    }
    game_end(); // Encerra o jogo
}
