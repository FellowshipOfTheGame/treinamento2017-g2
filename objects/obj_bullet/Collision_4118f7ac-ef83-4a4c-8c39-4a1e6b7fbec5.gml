/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 028D6425
/// @DnDArgument : "expr" "obj_enemy.dead"
/// @DnDArgument : "not" "1"
if(!(obj_enemy.dead))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 21669030
	/// @DnDParent : 028D6425
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 64408598
	/// @DnDApplyTo : other
	/// @DnDParent : 028D6425
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)obj_enemy.sprite_index = spr_enemyDead;$(13_10)obj_enemy.dead = true;"
	with(other) {
	/// @description Execute Code
	obj_enemy.sprite_index = spr_enemyDead;
	obj_enemy.dead = true;
	}
}