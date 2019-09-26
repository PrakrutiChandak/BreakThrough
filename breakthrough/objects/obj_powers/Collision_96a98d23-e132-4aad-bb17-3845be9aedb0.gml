/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 018782F5
/// @DnDArgument : "soundid" "snd_power"
/// @DnDSaveInfo : "soundid" "05419590-30b8-47e8-87a5-a5660d044454"
audio_play_sound(snd_power, 0, 0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 228BB1CE
instance_destroy();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6D0E5570
/// @DnDArgument : "var" "image_index"
if(image_index == 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 31944506
	/// @DnDApplyTo : other
	/// @DnDParent : 6D0E5570
	/// @DnDArgument : "value" "10"
	/// @DnDArgument : "value_relative" "1"
	with(other) {
	x += 10;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4D97DE48
/// @DnDArgument : "var" "image_index"
/// @DnDArgument : "value" "1"
if(image_index == 1)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1D783FD1
	/// @DnDApplyTo : 2b1be382-fc63-4c99-9c74-b3ef5ee5d5e4
	/// @DnDParent : 4D97DE48
	/// @DnDArgument : "speed" "spd"
	with(obj_ball) speed = spd;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 10685EF3
/// @DnDArgument : "var" "image_index"
/// @DnDArgument : "value" "2"
if(image_index == 2)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 0BA05D9F
	/// @DnDParent : 10685EF3
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "player_lives"
	global.player_lives += 1;
}