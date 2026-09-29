if !TriggerOnlyOnRoomStart
{
global.LastSafeSpotX = LastSafeSpotX;
global.LastSafeSpotY = LastSafeSpotY;
}
else
{
	if TimeExisting < 5
	{
		global.LastSafeSpotX = LastSafeSpotX;
		global.LastSafeSpotY = LastSafeSpotY;
	}
}