//create buttons
_Repair = instance_create_depth(320,960,9999,O_BattleButton)
with _Repair {Type = "Repair"}
_Heal = instance_create_depth(640,960,9999,O_BattleButton)
with _Heal {Type = "Heal"}
_Defend = instance_create_depth(960,960,9999,O_BattleButton)
with _Defend {Type = "Defend"}
_Check = instance_create_depth(1280,960,9999,O_BattleButton)
with _Check {Type = "Check"}

frame++