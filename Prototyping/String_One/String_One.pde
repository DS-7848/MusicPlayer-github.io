/*String
*/
//
//Display
fullScreen(); //Landscape
//size(500, 500); //portrait
int appWidth = displayWidth; //width:500
int appHeight = displayHeight; //height:500
//println("Display VARS", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\n\t\t\t\t\tFullScreen, displayWidth:"+displayWidth, "displayHeight:"+displayHeight, "\n\t\t\t\t\tSet Values, width:"+width, "height:"+height);
//
float stringDivX = appWidth*1/4;
float stringDivY = appHeight*1/10;
float stringDivWidth = appWidth*1/2;
float stringDivHeight = appHeight*1/10;

String title = "Test";
//
/*
println("Start of Console"); //ERROR: if console memory is not enough
String[] fontList = PFont.list(); //used for listing all fonts available on system
printArray(fontList); //for listing all possible fonts that can be chosen
*/
int fontSize = 55; //entire program font size
PFont titleFont; //Font variable name
String gabriola = "Gabriola";
titleFont = createFont (gabriola, fontSize);
//
rect( stringDivX, stringDivY, stringDivWidth, stringDivHeight );
//
text( title, stringDivX, stringDivY, stringDivWidth, stringDivHeight );
//
