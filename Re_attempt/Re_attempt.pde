fullScreen(); //displayWidth //displayHeight
int appWidth = displayWidth;
int appHeight = displayHeight;

float baseX = appWidth * 1/4;
float baseY = appHeight * 1/8;
float baseWidth = appWidth * 1/4;
float baseHeight = appHeight * 1/8;
rect(baseX, baseY, baseWidth, baseHeight);

float lyricsX = baseX + baseWidth * 4/10;
float lyricsY = baseY + baseHeight * 2/10;
float lyricsWidth = baseWidth * 8/10;
float lyricsHeight = baseHeight * 6/10;
rect(lyricsX, lyricsY, lyricsWidth, lyricsHeight);
