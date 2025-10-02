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

float forwardX = appWidth * 10.5/15.5;
float forwardY = appHeight * 18.5/23;
float forwardWidth = appWidth * 4.5/15.5;
float forwardHeight = appHeight * 3/23;
rect(forwardX, forwardY, forwardWidth, forwardHeight);

float playX1 = appWidth * 7.5/15.5;
float playY1 = appHeight * 19/23;
float playX2 = appWidth * 9/15.5;
float playY2 = appHeight * 20/23;
float playX3 = appWidth * 7.5/15.5;
float playY3 = appHeight * 21/23;
triangle(playX1, playY1, playX2, playY2, playX3, playY3);

float forwardX1 = forwardX + forwardWidth * 2/8;
float forwardY1 = forwardY + forwardHeight * 2/8;
float forwardX2 = forwardX + forwardWidth * 1/2;
float forwardY2 = forwardY + forwardHeight * 1/2;
float forwardX3 = forwardX + forwardWidth * 2/8;
float forwardY3 = forwardY + forwardHeight * 6/8;
triangle(forwardX1, forwardY1, forwardX2, forwardY2, forwardX3, forwardY3);

float forwardXv1 = forwardX * 1/2;
rect(forwardXv1, forwardYv1, forwardWidthv1, forwardHeightv1);

float reverseX1 = reverseX + reverseWidth * 6/8;
float reverseY1 = reverseY + reverseHeight * 2/8;
float reverseX2 = reverseX + reverseWidth * 1/2;
float reverseY2 = reverseY + reverseHeight * 1/2;
float reverseX3 = reverseX + reverseWidth * 6/8;
float reverseY3 = reverseY + reverseHeight * 6/8;
triangle(reverseX1, reverseY1, reverseX2, reverseY2, reverseX3, reverseY3);
