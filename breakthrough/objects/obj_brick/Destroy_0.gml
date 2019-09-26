/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 2C21BD4A
/// @DnDArgument : "soundid" "snd_explosion"
/// @DnDSaveInfo : "soundid" "57ebb78b-0fe2-4714-b395-db3f2802b69f"
audio_play_sound(snd_explosion, 0, 0);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 057DF25B
/// @DnDArgument : "var" "chance"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "2"
var chance = floor(random_range(0, 2 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 007BCB09
/// @DnDArgument : "var" "chance"
if(chance == 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6F63134F
	/// @DnDParent : 007BCB09
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_powers"
	/// @DnDSaveInfo : "objectid" "492d35f4-f756-4511-b25f-ac66a3c5c8c9"
	instance_create_layer(x + 0, y + 0, "Instances", obj_powers);
}