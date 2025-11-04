fullScreen(); //displayWidth //displayHeight
int appWidth = displayWidth;
int appHeight = displayHeight;

float baseX = appWidth * 0;
float baseY = appHeight * 0;
float baseWidth = appWidth * 16;
float baseHeight = appHeight * 24;
rect(baseX, baseY, baseWidth, baseHeight);

float songX = appWidth * 4/16;
float songY = appHeight * 0/24;
float songWidth = appWidth * 8/16;
float songHeight = appHeight * 1/24;
rect(songX, songY, songWidth, songHeight);

float lyricsX = appWidth * 2/16;
float lyricsY = appHeight * 1/24;
float lyricsWidth = appWidth * 12/16;
float lyricsHeight = appHeight * 14/24;
rect(lyricsX, lyricsY, lyricsWidth, lyricsHeight);

float authorX = appWidth * 2/16;
float authorY = appHeight * 16/24;
float authorWidth = appWidth * 12/16;
float authorHeight = appHeight * 1/24;
rect(authorX, authorY, authorWidth, authorHeight);

float timeX = appWidth * 2/16;
float timeY = appHeight * 17/24;
float timeWidth = appWidth * 12/16;
float timeHeight = appHeight * 2/24;
rect(timeX, timeY, timeWidth, timeHeight);

float buttonsX = appWidth * 2/16;
float buttonsY = appHeight * 20/24;
float buttonsWidth = appWidth * 12/16;
float buttonsHeight = appHeight * 4/24;
rect(buttonsX, buttonsY, buttonsWidth, buttonsHeight);

float reverseX = buttonsX + buttonsWidth * 0/4;
float reverseY = buttonsY + buttonsHeight * 0;
float reverseWidth = buttonsWidth * 1/4;
float reverseHeight = buttonsHeight * 1;
rect(reverseX, reverseY, reverseWidth, reverseHeight);

float stopX = buttonsX + buttonsWidth * 1/4;
float stopY = buttonsY + buttonsHeight * 0;
float stopWidth = buttonsWidth * 1/4;
float stopHeight = buttonsHeight * 1;
rect(stopX, stopY, stopWidth, stopHeight);


float playX = buttonsX + buttonsWidth * 2/4;
float playY = buttonsY + buttonsHeight * 0;
float playWidth = buttonsWidth * 1/4;
float playHeight = buttonsHeight * 1;
rect(playX, playY, playWidth, playHeight);

float forwardX = buttonsX + buttonsWidth * 3/4;
float forwardY = buttonsY + buttonsHeight * 0;
float forwardWidth = buttonsWidth * 1/4;
float forwardHeight = buttonsHeight * 1;
rect(forwardX, forwardY, forwardWidth, forwardHeight);

float playX1 = playX + playWidth * 2/8;
float playY1 = playY + playHeight * 1/8;
float playX2 = playX + playWidth * 3/4;
float playY2 = playY + playHeight * 1/2;
float playX3 = playX + playWidth * 2/8;
float playY3 = playY + playHeight * 7/8;
triangle(playX1, playY1, playX2, playY2, playX3, playY3);

float forwardX1 = forwardX + forwardWidth * 2/8;
float forwardY1 = forwardY + forwardHeight * 1/8;
float forwardX2 = forwardX + forwardWidth * 5/8;
float forwardY2 = forwardY + forwardHeight * 1/2;
float forwardX3 = forwardX + forwardWidth * 2/8;
float forwardY3 = forwardY + forwardHeight * 7/8;
triangle(forwardX1, forwardY1, forwardX2, forwardY2, forwardX3, forwardY3);

float forwardXb = forwardX + forwardWidth * 5/8;
float forwardYb = forwardY + forwardHeight * 1/8;
float forwardWidthb = forwardWidth * 1/8;
float forwardHeightb = forwardHeight * 6/8;
rect(forwardXb, forwardYb, forwardWidthb, forwardHeightb);

float reverseX1 = reverseX + reverseWidth * 6/8;
float reverseY1 = reverseY + reverseHeight * 1/8;
float reverseX2 = reverseX + reverseWidth * 3/8;
float reverseY2 = reverseY + reverseHeight * 1/2;
float reverseX3 = reverseX + reverseWidth * 6/8;
float reverseY3 = reverseY + reverseHeight * 7/8;
triangle(reverseX1, reverseY1, reverseX2, reverseY2, reverseX3, reverseY3);

float reverseXb = reverseX + reverseWidth * 2/8;
float reverseYb = reverseY + reverseHeight * 1/8;
float reverseWidthb = reverseWidth * 1/8;
float reverseHeightb = reverseHeight * 6/8;
rect(reverseXb, reverseYb, reverseWidthb, reverseHeightb);

float stopXa = stopX + stopWidth * 2/8;
float stopYa = stopY + stopHeight * 1/8;
float stopWidtha = stopWidth * 1/8;
float stopHeighta = stopHeight * 6/8;
rect(stopXa, stopYa, stopWidtha, stopHeighta);

float stopXb = stopX + stopWidth * 5/8;
float stopYb = stopY + stopHeight * 1/8;
float stopWidthb = stopWidth * 1/8;
float stopHeightb = stopHeight * 6/8;
rect(stopXb, stopYb, stopWidthb, stopHeightb);
