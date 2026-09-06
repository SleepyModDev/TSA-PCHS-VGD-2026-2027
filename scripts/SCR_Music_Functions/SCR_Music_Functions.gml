/// @param SongID
/// @param FadeOutTime
/// @param FadeInTime
/// @param PitchOffset

function Set_Song_Ingame(_Song, _FadeOutCurrentSong = 0, _FadeIn = 0, _Pitch = 1) //_Song=noone stops the ends music
{
	with (O_MusicController)
	{
		SongTargetAsset = _Song;
		EndFadeOutTime = _FadeOutCurrentSong;
		StartFadeInTime = _FadeIn;
		PitchOffset = _Pitch;
	}
}