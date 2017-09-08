/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0F655485
/// @DnDArgument : "code" "//@description Shows gate destruction$(13_10)$(13_10)if((38*0.75) < durability && durability <= 38)$(13_10)	image_index = 0;$(13_10)else if((38*0.5) < durability && durability <= (38*0.75))$(13_10)	image_index = 1;$(13_10)else if((38*0.15) < durability && durability <= (38*0.5))$(13_10)	image_index = 2;$(13_10)else if(durability <= (38*0.15))$(13_10)	image_index = 3;"
//l0F655485_0 Shows gate destruction

if((38*0.75) < durability && durability <= 38)
	image_index = 0;
else if((38*0.5) < durability && durability <= (38*0.75))
	image_index = 1;
else if((38*0.15) < durability && durability <= (38*0.5))
	image_index = 2;
else if(durability <= (38*0.15))
	image_index = 3;