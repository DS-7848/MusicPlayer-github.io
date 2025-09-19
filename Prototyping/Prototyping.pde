fullScreen(); //displayWidth //displayHeight
int appWidth = displayWidth;
int appHeight = displayHeight;

float lyricsX = appWidth * 1/4;
float lyricsY = appHeight * 1/4;
float lyricsWidth = appWidth * 1/2;
float lyricsHeight = appHeight * 1/2;

//
rect(lyricsX, lyricsY, lyricsWidth, lyricsHeight);
rect(timeX, timeY, timeWidth, timeHeight);
rect(authorX, authorY, authorWidth, authorHeight);
rect(buttonsX, buttonsY, buttonsWidth, buttonsHeight);
rect(reverseX, reverseY, reverseWidth, reverseHeight);
rect(playX, playY, playWidth, playHeight);
rect(forwardX, forwardY, forwardWidth, forwardHeight);
