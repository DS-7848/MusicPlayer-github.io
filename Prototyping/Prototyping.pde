fullScreen(); //displayWidth //displayHeight
int appWidth = displayWidth;
int appHeight = displayHeight;

float baseX = appWidth * 0;
float baseY = appHeight * 0;
float baseWidth = appWidth * 13.3;
float baseHeight = appHeight * 23.4;
rect(baseX, baseY, baseWidth, baseHeight);

float lyricsX = appWidth * 1.45/0;
float lyricsY = appHeight * 1.45/0;
float lyricsWidth = appWidth * 12.4/13.3;
float lyricsHeight = appHeight * 13.6/23.4;
rect(lyricsX, lyricsY, lyricsWidth, lyricsHeight);

float timeX = appWidth * spot/total;
float timeY = appHeight * spot/total;
float timeWidth = appWidth * spot/total;
float timeHeight = appHeight * spot/total;
rect(timeX, timeY, timeWidth, timeHeight);

float authorX = appWidth * spot/total;
float authorY = appHeight * spot/total;
float authorWidth = appWidth * spot/total;
float authorHeight = appHeight * spot/total;
rect(authorX, authorY, authorWidth, authorHeight);

float buttonsX = appWidth * spot/total;
float buttonsY = appHeight * spot/total;
float buttonsWidth = appWidth * spot/total;
float buttonsHeight = appHeight * spot/total;
rect(buttonsX, buttonsY, buttonsWidth, buttonsHeight);

float reverseX = appWidth * spot/total;
float reverseY = appHeight * spot/total;
float reverseWidth = appWidth * spot/total;
float reverseHeight = appHeight * spot/total;
rect(reverseX, reverseY, reverseWidth, reverseHeight);

float playX = appWidth * spot/total;
float playY = appHeight * spot/total;
float playWidth = appWidth * spot/total;
float playHeight = appHeight * spot/total;
rect(playX, playY, playWidth, playHeight);

float forwardX = appWidth * spot/total;
float forwardY = appHeight * spot/total;
float forwardWidth = appWidth * spot/total;
float forwardHeight = appHeight * spot/total;
rect(forwardX, forwardY, forwardWidth, forwardHeight);
