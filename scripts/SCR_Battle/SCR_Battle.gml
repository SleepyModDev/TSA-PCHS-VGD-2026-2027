function Battle_Start(_EnemyType, _EnemyCount = 1, _RepairNeeded = 3, _EnemyDamage)
{
	instance_create_layer(0,0,"Controllers",O_Battle)
	with O_Battle
	{
		EnemiesInBattle = array_create(_EnemyCount,_EnemyType);
		EnemyCount = array_length(EnemiesInBattle)
		EnemiesInBattleSpared = array_create(2,false);
		EnemiesInBattleRepairNeeded = _RepairNeeded;
		EnemiesInBattleRepairProgress = array_create(2,0);
		EnemyDamage = _EnemyDamage;
	}
}