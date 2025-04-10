var margem = 16;
var sol_width = sprite_get_width(sSol); // Use o nome do sprite
var sol_height = sprite_get_height(sSol);

var spawnX, spawnY;

repeat (100) {
    spawnX = irandom_range(margem, room_width - margem - sol_width);
    spawnY = irandom_range(margem, room_height - margem - sol_height);

    if (
        !position_meeting(spawnX, spawnY, o_Wall) &&
        !position_meeting(spawnX, spawnY, o_Girassol)
    ) {
        break;
    }
}

instance_create_depth(spawnX, spawnY, 0, o_Sol);


tempo = 60; // Tempo inicial em segundos
