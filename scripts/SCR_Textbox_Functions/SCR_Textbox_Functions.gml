function Set_Defaults_For_text()
{
	LineBreakPos[0, PageNumber] = 999;
	LineBreakNumber[PageNumber] = 0;
	LineBreakOffset[PageNumber] = 0;
	
	//variables for each letter
	for (var c = 0; c < 500; c++;)
	{
		TextCol1[c, PageNumber] = c_white
		TextCol2[c, PageNumber] = c_white
		TextCol3[c, PageNumber] = c_white
		TextCol4[c, PageNumber] = c_white
		
		TextFloat[c, PageNumber] = 0;
		FloatDir[c, PageNumber] = c*20;
		
		TextShake[c, PageNumber] = 0;
		ShakeDir[c, PageNumber] = irandom(360);
		ShakeTimer[c, PageNumber] = irandom(4);
		ShakeIntensity[c, PageNumber] = 1;
	}
	
	TextboxSprite[PageNumber] = S_MenuBoxBlack
	SpeakerSprite[PageNumber] = noone
	SpeakerSide[PageNumber] = 1;
	Sound[PageNumber] = SND_TextBlip2;
	Pitch[PageNumber] = .75
}

//--------------Text VFX-------------------//

/// @param FirstChar
/// @param LastChar
/// @param Col1
/// @param Col2
/// @param Col3
/// @param Col4
function Text_Color(_First, _Last, _Col1, _Col2, _Col3, _Col4)
{
	for (var c = _First; c <= _Last; c++;)
	{
		TextCol1[c, PageNumber-1] = _Col1;
		TextCol2[c, PageNumber-1] = _Col2;
		TextCol3[c, PageNumber-1] = _Col3;
		TextCol4[c, PageNumber-1] = _Col4;
	}
}

/// @param FirstChar
/// @param LastChar
/// @param Instensity
function Text_Float(_First, _Last, _Intensity)
{
	for (var c = _First; c <= _Last; c++;)
	{
		TextFloat[c, PageNumber-1] = 1;
		FloatDir[c, PageNumber-1] = c+20*_Intensity;
	}
}

/// @param FirstChar
/// @param LastChar
/// @param Instensity
function Text_Shake(_First, _Last,_Intensity)
{
	for (var c = _First; c <= _Last; c++;)
	{
		TextShake[c, PageNumber-1] = 1;
		ShakeIntensity[c, PageNumber-1] = _Intensity;
	}
}

//---------actual text stuff-------------//

/// @param Text
/// @param [Character]
/// @param [side]
function Text_SCR(_Text)
{
	Set_Defaults_For_text();
	
	Text[PageNumber] = _Text;
	
	//get char info
	if argument_count > 1
	{
		switch(argument[1])
		{
			//---------ERROR--------------//
			case "ERROR":
			SpeakerSprite[PageNumber] = noone;
			TextboxSprite[PageNumber] = S_MenuBoxError;
			Sound[PageNumber] = SND_TextBlip2;
			Pitch[PageNumber] = 1;
				break;
			
			//---------JUDE--------------//
			#region JUDE
			case "Jude":
			SpeakerSprite[PageNumber] = noone; //S_JudePortrait; 
			TextboxSprite[PageNumber] = S_MenuBoxBlack;
			Sound[PageNumber] = SND_TextBlip //SNDJudeVoiceBlip
			Pitch[PageNumber] = 1
				break;
				
			case "Jude Alt":
			SpeakerSprite[PageNumber] = noone //S_JudePortraitAlt; 
			TextboxSprite[PageNumber] = S_MenuBoxBlack;
			Sound[PageNumber] = SND_TextBlip //SNDJudeVoiceBlip
			Pitch[PageNumber] = .9
				break;
			#endregion JUDE
	
		}
	}
	//side the player is on
	if argument_count > 2
	{
		SpeakerSide[PageNumber] = argument[2];
	}
	
	PageNumber++;
}

/// @param Option
/// @param LinkID
function Option_SCR(_Option, _LinkID)
{
	Option[OptionNumber] = _Option;
	OptionLinkID[OptionNumber] = _LinkID;
	
	OptionNumber++;
}

/// @param TextID
function Create_Textbox(_TextID)
{
	with (instance_create_depth(0, 0, -99999, O_Textbox))
	{
		Game_Text(_TextID)
	}
}