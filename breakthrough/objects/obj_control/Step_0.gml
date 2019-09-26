/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 01F26E9B
/// @DnDArgument : "var" "numOfBricks"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "object" "obj_brick"
/// @DnDSaveInfo : "object" "60deac2f-53d8-4f3f-ab33-dd77a30213af"
var numOfBricks = instance_number(obj_brick);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4255C247
/// @DnDArgument : "var" "numOfBricks"
/// @DnDArgument : "op" "3"
if(numOfBricks <= 0)
{
	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 1CF58A14
	/// @DnDParent : 4255C247
	room_goto_next();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4C323077
/// @DnDArgument : "var" "gameover"
/// @DnDArgument : "value" "true"
if(gameover == true)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 7A48068B
	/// @DnDParent : 4C323077
	/// @DnDArgument : "room" "rm_end"
	/// @DnDSaveInfo : "room" "a935fda2-1a44-4bca-adec-ce603abab33b"
	room_goto(rm_end);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 70D5B4C7
	/// @DnDParent : 4C323077
	/// @DnDArgument : "var" "player_score"
	global.player_score = 0;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 1AFFA9E0
	/// @DnDParent : 4C323077
	/// @DnDArgument : "value" "3"
	/// @DnDArgument : "var" "player_lives"
	global.player_lives = 3;
}