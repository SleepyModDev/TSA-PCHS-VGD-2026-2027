depth = -99999;

//textbox parameters
TextboxWidth = 620;
TextboxHeight = 160;
Border = 12;
Space = 24;
LineWidth = TextboxWidth - Border*4;

TextboxSprite[0] = S_MenuBoxBlack;
TextboxImage = 0;
TextboxImageSpd = 0;

//the text
Page = 0;
PageNumber = 0;
Text[0] = "";
TextLength[0] = string_length(Text[0]);

Char[0, 0] = "";
CharX[0, 0] = 0;
CharY[0, 0] = 0;

DrawChar = 0;
TextSpd = .5;

//options
Option[0] = "";
OptionLinkID[0] = -1;
OptionPos = 0;
OptionNumber = 0;

SetUp = false;

//sound
SoundDelay = 3
SoundCount = SoundDelay

//effects
Set_Defaults_For_text();
LastFreeSpace = 0;
TextPauseTimer = 0;
TextPauseTime = 16;