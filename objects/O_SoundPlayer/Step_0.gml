if Frame = 0
{
	audio_play_sound(SoundToPlay,10,SoundLoops)
	if FreezePlayer {global.FreezePlayer = true}
}
Frame++
if FreezePlayer {global.FreezePlayer = true}

if audio_sound_length(SoundToPlay) <= Frame/60
{
	global.FreezePlayer = false
	instance_destroy(self)
}