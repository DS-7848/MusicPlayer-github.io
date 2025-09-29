fullScreen(); //displayWidth //displayHeight
int appWidth = displayWidth;
int appHeight = displayHeight;

float baseX = appWidth * 0;
float baseY = appHeight * 0;
float baseWidth = appWidth * 15.5;
float baseHeight = appHeight * 23;
rect(baseX, baseY, baseWidth, baseHeight);

float lyricsX = appWidth * 1.5/15.5;
float lyricsY = appHeight * 1.5/23;
float lyricsWidth = appWidth * 12.5/15.5;
float lyricsHeight = appHeight * 13.5/23;
rect(lyricsX, lyricsY, lyricsWidth, lyricsHeight);

float timeX = appWidth * 1.5/15.5;
float timeY = appHeight * 15.5/23;
float timeWidth = appWidth * 11.5/15.5;
float timeHeight = appHeight * 1.5/23;
rect(timeX, timeY, timeWidth, timeHeight);

float authorX = appWidth * 1.5/15.5;
float authorY = appHeight * 17/23;
float authorWidth = appWidth * 12.5/15.5;
float authorHeight = appHeight * 1/23;
rect(authorX, authorY, authorWidth, authorHeight);

float buttonsX = appWidth * 1.5/15.5;
float buttonsY = appHeight * 18.5/23;
float buttonsWidth = appWidth * 13/15.5;
float buttonsHeight = appHeight * 3/23;
rect(buttonsX, buttonsY, buttonsWidth, buttonsHeight);

float reverseX = appWidth * 1.5/15.5;
float reverseY = appHeight * 18.5/23;
float reverseWidth = appWidth * 4.5/15.5;
float reverseHeight = appHeight * 3/23;
rect(reverseX, reverseY, reverseWidth, reverseHeight);

float playX = appWidth * 6/15.5;
float playY = appHeight * 18.5/23;
float playWidth = appWidth * 4.5/15.5;
float playHeight = appHeight * 3/23;
rect(playX, playY, playWidth, playHeight);

float forwardX = appWidth * 10/15.5;
float forwardY = appHeight * 18.5/23;
float forwardWidth = appWidth * 4.5/15.5;
float forwardHeight = appHeight * 3/23;
rect(forwardX, forwardY, forwardWidth, forwardHeight);
