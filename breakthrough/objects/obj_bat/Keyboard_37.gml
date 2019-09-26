/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6E6EE06C
/// @DnDArgument : "var" "x - sprite_xoffset - spd"
/// @DnDArgument : "op" "2"
if(x - sprite_xoffset - spd > 0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 06C92319
	/// @DnDParent : 6E6EE06C
	/// @DnDArgument : "x" "-spd"
	/// @DnDArgument : "x_relative" "1"
	x += -spd;
}