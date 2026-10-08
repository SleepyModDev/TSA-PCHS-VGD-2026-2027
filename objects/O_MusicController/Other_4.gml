/// @description Play the correct music

if room == RM_MaintenenceOffice01
|| RM_MaintenenceOffice02
{
	Set_Song_Ingame(freesound_community_mechanical_hum_64405,60,60)
}

if room == RM_Test
|| room == 5
|| room == 6
{
	Set_Song_Ingame(MUS_TempPlaceholder1,60,60)
}

if room == RM_Habitation01

{
	Set_Song_Ingame(MUS_Pipes,60,60)
}
if room == RM_Battle
{
	Set_Song_Ingame(MUS_SpaceFight,0,0,1,8.57)
}