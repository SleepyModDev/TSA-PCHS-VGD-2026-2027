/// @description Play the correct music

if room == noone
{
	Set_Song_Ingame(MUS_TempPlaceholder1,0,60)
}

if room == RM_Test
|| room == 4
|| room == 5
|| room == 6
{
	Set_Song_Ingame(MUS_TempPlaceholder1,0,0)
}