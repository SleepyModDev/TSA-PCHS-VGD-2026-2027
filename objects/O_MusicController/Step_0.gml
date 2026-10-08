var _FinalVol = (global.MusicVol/100)*(global.MasterVol/100);
	
//play target song
if SongAsset != SongTargetAsset
{
	//tell old song to fade out
	if audio_is_playing(SongInstance)
	{
		//add song to fade list
		array_push(FadeOutInstances, SongInstance);
		//add songs starting volume so no abrupt changes
		array_push(FadeOutInstanceVol, FadeInInstVol);
		//add fade out time
		array_push(FadeOutInstanceTime,EndFadeOutTime);
		
		//reset song instance and variables
		SongInstance = noone;
		SongAsset = noone;	
	}
	
	//play new song if old has faded out
	//if array_length(FadeOutInstances) == 0
	//{
		if audio_exists(SongTargetAsset)
		{
			//play song and store as variable
			SongInstance = audio_play_sound(SongTargetAsset, 4, true,100,0,PitchOffset);
	
			//start volume at 0
			audio_sound_gain(SongInstance, 0, 0);
			FadeInInstVol = 0;
		//}
		SongAsset = SongTargetAsset;
	}
}

//volume control
	//main song volume
	if audio_is_playing(SongInstance)
	{
		//fade song in
		if StartFadeInTime > 0
		{
			if FadeInInstVol < 1 {FadeInInstVol += 1/StartFadeInTime;} else {FadeInInstVol = 1;}
		}
		else
		//immediatly start song
		{
			FadeInInstVol=1;
		}
		//apply gain

		audio_sound_gain(SongInstance, FadeInInstVol*_FinalVol, 0);
	}
	
	//fading songs out
	for (var i = 0; i < array_length(FadeOutInstances); i++;)
	{
		//fade the volume
		if FadeOutInstanceTime[i] > 0
		{
			if FadeOutInstanceVol[i] > 0 {FadeOutInstanceVol[i] -= 1/FadeOutInstanceTime[i];}
		}
		//immedialty end song
		else
		{
			FadeOutInstanceVol[i] = 0;
		}
		//apply gain
		audio_sound_gain(FadeOutInstances[i], FadeOutInstanceVol[i]*_FinalVol)
		//end songs at 0 gain and remove from arrays
		if FadeOutInstanceVol[i] <= 0
		{
			//stop the song
			if audio_is_playing(FadeOutInstances[i]) {audio_stop_sound(FadeOutInstances[i])}
			//remove from arrays
			array_delete(FadeOutInstances,i,1);
			array_delete(FadeOutInstanceVol,i,1);
			array_delete(FadeOutInstanceTime,i,1);
			i--;
		}
	}