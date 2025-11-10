fullScreen(); //displayWidth //displayHeight
int appWidth = displayWidth;
int appHeight = displayHeight;

float baseX = appWidth * 0;
float baseY = appHeight * 0;
float baseWidth = appWidth * 15.3;
float baseHeight = appHeight * 23;
rect(baseX, baseY, baseWidth, baseHeight);

float lyricsX = appWidth * 1.45/15.3;
float lyricsY = appHeight * 1.45/23;
float lyricsWidth = appWidth * 12.4/15.3;
float lyricsHeight = appHeight * 13.6/23;
rect(lyricsX, lyricsY, lyricsWidth, lyricsHeight);

float timeX = appWidth * 1.7/15.3;
float timeY = appHeight * 15.6/23;
float timeWidth = appWidth * 11.7/15.3;
float timeHeight = appHeight * 1.6/23;
rect(timeX, timeY, timeWidth, timeHeight);

float authorX = appWidth * 1.55/15.3;
float authorY = appHeight * 17/23;
float authorWidth = appWidth * 12.6/15.3;
float authorHeight = appHeight * 0.8/23;
rect(authorX, authorY, authorWidth, authorHeight);

float buttonsX = appWidth * 1.55/15.3;
float buttonsY = appHeight * 18.7/23;
float buttonsWidth = appWidth * 12.9/15.3;
float buttonsHeight = appHeight * 3.2/23;
rect(buttonsX, buttonsY, buttonsWidth, buttonsHeight);

float reverseX = appWidth * 1.55/15.3;
float reverseY = appHeight * 18.7/23;
float reverseWidth = appWidth * 4.3/15.3;
float reverseHeight = appHeight * 3.2/23;
rect(reverseX, reverseY, reverseWidth, reverseHeight);

float playX = appWidth * 5.85/15.3;
float playY = appHeight * 18.7/23;
float playWidth = appWidth * 4.3/15.3;
float playHeight = appHeight * 3.2/23;
rect(playX, playY, playWidth, playHeight);

float forwardX = appWidth * 10.15/15.3;
float forwardY = appHeight * 18.7/23;
float forwardWidth = appWidth * 4.3/15.3;
float forwardHeight = appHeight * 3.2/23;
rect(forwardX, forwardY, forwardWidth, forwardHeight);
