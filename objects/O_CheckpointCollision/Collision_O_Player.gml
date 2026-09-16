if !TriggerOnlyOnRoomStart
{
global.LastSafeSpotX = LastSafeSpotX;
global.LastSafeSpotY = LastSafeSpotY;
audio_play_sound(SND_TextBlip,0,0,1,0,.5)
}
else
{
	if TimeExisting < 5
	{
		global.LastSafeSpotX = LastSafeSpotX;
		global.LastSafeSpotY = LastSafeSpotY;
		audio_play_sound(SND_TextBlip,0,0,1,0,.5)
	}
}