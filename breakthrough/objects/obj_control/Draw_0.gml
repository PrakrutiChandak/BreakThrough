/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3C189633
/// @DnDArgument : "x" "8"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "global.player_score"
draw_text(8, 8, string("Score: ") + string(global.player_score));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 267ED4ED
/// @DnDArgument : "halign" "fa_right"
draw_set_halign(fa_right);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3C1F88FD
/// @DnDArgument : "x" "room_width - 8"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "caption" ""High Score: ""
/// @DnDArgument : "var" "global.high_score"
draw_text(room_width - 8, 8, string("High Score: ") + string(global.high_score));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 7C0E2913
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 13C5ED63
/// @DnDArgument : "x" "(room_width / 2) - ((global.player_lives - 1) * 32)"
/// @DnDArgument : "y" "room_height - 32"
/// @DnDArgument : "sprite" "spr_lives"
/// @DnDArgument : "number" "global.player_lives"
/// @DnDSaveInfo : "sprite" "c68fbd6b-cbfc-48bd-a05d-a0c139ecf33e"
var l13C5ED63_0 = sprite_get_width(spr_lives);
var l13C5ED63_1 = 0;
for(var l13C5ED63_2 = global.player_lives; l13C5ED63_2 > 0; --l13C5ED63_2) {
	draw_sprite(spr_lives, 0, (room_width / 2) - ((global.player_lives - 1) * 32) + l13C5ED63_1, room_height - 32);
	l13C5ED63_1 += l13C5ED63_0;
}