Get_Controls()

TextboxX = camera_get_view_x(view_camera[0]) +228;
TextboxY = camera_get_view_y(view_camera[0]) + 384;

//setup--------------------------------------
if SetUp = false
{
	global.Paused = 0
	SetUp = true;
	draw_set_font(Font1);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop through the pages
	for (var p = 0; p< PageNumber;p++;)
	{
		TextLength[p] = string_length(Text[p]);
		
		//get x of text box
		
			//character on the left
			TextXOffset[p] = 80;
			PortraitXOffset[p] = -60
			
			//character on the right
			if SpeakerSide[p] == -1
			{
				TextXOffset[p] = 8;
				PortraitXOffset[p] = 216
			}
			
			//no character (center)
			if SpeakerSprite[p] = noone
			{
				TextXOffset[p] = 0;
			}
			
		//setting individual characters and finding where the lines should break
		for (var c = 0; c < TextLength[p]; c++;)
		{
			var _CharPos = c + 1;
			
			//store individual characters into char array
			Char[c, p] = string_char_at(Text[p], _CharPos);
			
			//get current line width
			var _TextUpToChar = string_copy(Text[p], 1, _CharPos);
			var _CurrentTextWidth = string_width(_TextUpToChar) - string_width(Char[c, p]);
			
			//get last free space
			if Char[c, p] == " " {LastFreeSpace = _CharPos + 1};
			
			//get the line breaks
			if _CurrentTextWidth - LineBreakOffset[p] > LineWidth
			{
				LineBreakPos[LineBreakNumber[p], p] = LastFreeSpace;
				LineBreakNumber[p]++;
				var _TextUpToLastSpace = string_copy(Text[p], 1, LastFreeSpace);
				var _LastFreeSpaceString = string_char_at(Text[p], LastFreeSpace);
				LineBreakOffset[p] = string_width(_TextUpToLastSpace) - string_width(_LastFreeSpaceString);
			}
		}
		
		//getting each chars coords
		for (var c = 0; c < TextLength[p]; c++;)
		{
			var _CharPos = c + 1;
			var _TextX = TextboxX + TextXOffset[p] + Border;
			var _TextY = TextboxY + Border;
			//get width of line
			var _TextUpToChar = string_copy(Text[p], 1, _CharPos);
			var _CurrentTextWidth = string_width(_TextUpToChar) - string_width(Char[c, p]);
			var _TextLine = 0;
			
			//compensate for line breaks
			for (var lb = 0; lb < LineBreakNumber[p]; lb++;)
			{
				//if current looping char is after line break
				if _CharPos >= LineBreakPos[lb, p]
				{
					var _StringCopy = string_copy(Text[p], LineBreakPos[lb, p], _CharPos - LineBreakPos[lb, p]);
					_CurrentTextWidth = string_width(_StringCopy);
					
					//record the line this char should be on
					_TextLine = lb + 1;
				}
			}
			
			//add to x and y cords
			CharX[c, p] = _TextX + _CurrentTextWidth;
			CharY[c, p] = _TextY + _TextLine*Space
		}
		
	}
}

//typing the text-----------------------------------
if string_char_at(Text[Page], DrawChar) == "." or string_char_at(Text[Page], DrawChar) == "?" or string_char_at(Text[Page], DrawChar) == "," or string_char_at(Text[Page], DrawChar) == "-" or string_char_at(Text[Page], DrawChar) == "!"
{image_index = 0}
if TextPauseTimer <=0
{
	if DrawChar < TextLength[Page]
	{
		DrawChar += TextSpd;
		DrawChar = clamp(DrawChar, 0, TextLength[Page]);
		var _CheckChar = string_char_at(Text[Page], DrawChar);
		if _CheckChar == "." or _CheckChar == "?" or _CheckChar == "!" or _CheckChar == "," or _CheckChar == "-"
		{
			TextPauseTimer = TextPauseTime
					if _CheckChar == "," or _CheckChar == "-"
			{
				TextPauseTimer = TextPauseTime/2
			}
		}
		else
		{
			//typing sound
			if SoundCount < SoundDelay
			{
				SoundCount++;
			}
			else
			{
				SoundCount = 0;
				audio_play_sound(Sound[Page], 8, false, 1, 0, Pitch[Page])
			}
		}

	}
}
TextPauseTimer--;

//flip through pages------------------------------------
if KeySelectPress or KeySkipHold
{
	//if typing done
	if DrawChar == TextLength[Page]
	{
		//next page
		if Page < PageNumber - 1
		{
			Page ++;
			DrawChar = 0;
		}
		//close textbox
		else
		{
			if !KeySkipHold
			{
				global.Paused = 1
				//link text for options
				if OptionNumber > 0
				{
					Create_Textbox(OptionLinkID[OptionPos])
				}
				instance_destroy();
			}
		}
	}
	//skip typing
	else
	{
		if DrawChar > 1 {DrawChar = TextLength[Page];}
	}
}


//draw textbox--------------------------------
var _TextboxX = TextboxX + TextXOffset[Page];
var _TextboxY = TextboxY;
TextboxImage += TextboxImageSpd;
TextboxSpriteWidth = sprite_get_width(S_Menu_Box);
TextboxSpriteHeight = sprite_get_height(S_Menu_Box);

//draw the speaker
if SpeakerSprite[Page] != noone
{
	sprite_index = SpeakerSprite[Page];
	if DrawChar == TextLength[Page] {image_index = 0}
	var _SpeakerX = TextboxX + PortraitXOffset[Page];
	if SpeakerSide == -1 {_SpeakerX += sprite_width}
	//draw the speaker
	draw_sprite_ext(TextboxSprite[Page],TextboxImage, TextboxX + PortraitXOffset[Page], TextboxY-8, 2*sprite_width/TextboxSpriteWidth, 2*sprite_height/TextboxSpriteHeight, 0, c_white, 1)
	draw_sprite_ext(sprite_index, image_index,_SpeakerX, TextboxY-8, SpeakerSide[Page]*2, 2, 0, c_white, 1)
}

//draw back of textbox
draw_sprite_ext(TextboxSprite[Page], TextboxImage, _TextboxX, _TextboxY, TextboxWidth/TextboxSpriteWidth, TextboxHeight/TextboxSpriteHeight, 0, c_white, 1)

//options-------------------------------

	
if DrawChar == TextLength[Page] && Page == PageNumber - 1
{
		//option select
	OptionPos += KeyDownPress - KeyUpPress;
	OptionPos = clamp(OptionPos, 0, OptionNumber-1)
	//draw the options
	var _OptionSpace = 60
	var _OptionBorder = 8
	for (var o = 0; o < OptionNumber; o++;)
	{
		//option box
		var _OptionWidth = string_width(Option[o]) + _OptionBorder*2;
		draw_sprite_ext(TextboxSprite[Page], TextboxImage, _TextboxX + 32, _TextboxY - _OptionSpace*OptionNumber + _OptionSpace*o, _OptionWidth/TextboxSpriteWidth, (_OptionSpace - 16)/TextboxSpriteHeight, 0, c_white, 1 )
		
		//the arrow
		if OptionPos == o
		{
			draw_sprite(Menu_Cursor_SPR,0,_TextboxX, _TextboxY-_OptionSpace*OptionNumber + _OptionSpace*OptionPos)
		}
		
		//the text
		draw_text(_TextboxX + 32 + _OptionBorder, _TextboxY - _OptionSpace*OptionNumber+12 + _OptionSpace*o + 2,Option[o]);
	}
	
}


//draw the text
for (var c = 0; c < DrawChar; c++;)
{
	//special stuff
		//float text
	var _FloatY = 0
	if TextFloat[c, Page] == 1
	{
		FloatDir[c, Page] += -6;
		_FloatY = dsin(FloatDir[c, Page]) * 4
	}
		//shake text
	var _ShakeX = 0;
	var _ShakeY = 0;
	if TextShake[c, Page] == 1
	{
		ShakeTimer[c, Page] --;
		if ShakeTimer[c, Page] <= 0
		{
			ShakeTimer[c, Page] = irandom_range(4, 8);
			ShakeDir[c, Page] = irandom(360)
		}
		if ShakeTimer[c, Page] <= 2
		{
			_ShakeX = lengthdir_x(ShakeIntensity[c, Page], ShakeDir[c, Page])
			_ShakeY = lengthdir_y(ShakeIntensity[c, Page], ShakeDir[c, Page])
		}

	}
	
	//the text
	draw_text_color(CharX[c, Page] + _ShakeX, CharY[c, Page] + _ShakeY + _FloatY, Char[c, Page], TextCol1[c, Page], TextCol2[c, Page], TextCol3[c, Page], TextCol4[c, Page], 1)
}