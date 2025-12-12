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
//Population
float[] stringDivWidth = new float[3];
float stringDivX1 = appWidth*1/4;
float stringDivY1 = appHeight*1/10;
stringDivWidth[1] = appWidth*1/2;
float stringDivHeight1 = appHeight*1/10;
float stringDivX2 = stringDivX1; //Cascading VARs
float stringDivY2 = appHeight*3/10;
stringDivWidth[2] = appWidth*1/4;
float stringDivHeight2 = stringDivHeight1; //Cascading VARs
float stringDivX3 = stringDivX1; //Cascading VARs
float stringDivY3 = appHeight*5/10;
stringDivWidth[3] = appWidth*5/8;
float stringDivHeight3 = stringDivHeight1; //Cascading VARs

String title = "Test before final attempt";
//
//String upArrow = "../../";
//String folder = "Images/";
//String BestOfMe = "BestOfMe";
//String fileExtensionJPG = ".jpg";
//String imagePathway1 = upArrow + folder + BestOfMe + fileExtensionJPG;
/*
println("Start of Console"); //ERROR: if console memory is not enough
 String[] fontList = PFont.list(); //used for listing all fonts available on system
 printArray(fontList); //for listing all possible fonts that can be chosen
 */
float fontSize = appHeight; //entire program font size
PFont titleFont; //Font variable name
String gabriola = "Gabriola";
titleFont = createFont (gabriola, fontSize);
//Tools / Creat Font / Find Font / Do Not Press "OK"
println(fontSize, gabriola, titleFont);
float fontSizeGabriola = 80.0;
println("Font Size", fontSize);
/* Aspect Ratio Manipulations (Changed to variables)
 - choose Aspect Ratio that must be multiplied: fontSize/titleHeight
 - Rewriting fontSize with formulae
 */
float gabriolaAspectRatio = fontSizeGabriola / stringDivHeight1;
fontSize = stringDivHeight1*gabriolaAspectRatio;
println("gabriola Aspect Ratio:", gabriolaAspectRatio);
println(); //Skip a line
//
rect( stringDivX1, stringDivY1, stringDivWidth1, stringDivHeight1 );
rect( stringDivX2, stringDivY2, stringDivWidth2, stringDivHeight2 );
rect( stringDivX3, stringDivY3, stringDivWidth3, stringDivHeight3 );
//
println(fontSize, gabriola, titleFont);
//Drawing Text
color purpleInk = #00045F; //Hexidecimal
color whiteInk = #FFFFFF;
color resetInk = whiteInk;
fill(purpleInk); //Ink, Grey Scale 0-255
textAlign (CENTER, CENTER);
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
textFont(titleFont, fontSize);
float constantDecrease = 0.99; //99% of original or a 1% decrease
//FOR Loop Error: Copy & Paste three times
for ( int i=0; i<3; i++ ) {
  while ( textWidth( title ) > stringDivWidth[i] ) {
  //ERROR infinite loop, requires exit() & println()
  fontSize *= constantDecrease; //fontSize = fontSize*0.99;
  textFont(titleFont, fontSize);
  } //End WHILE Error Check Text-wrap
} //End FOR Loop, Font Size Check in DIVs


//WHILE Error Check
for ( int i=0; i<3; i++) []
text( title, stringDivX[i], stringDivY[i], stringDivWidth[i], stringDivHeight[i] );
text( title, stringDivX[i], stringDivY[i], stringDivWidth[i], stringDivHeight[i] );
text( title, stringDivX[i], stringDivY[i], stringDivWidth[i], stringDivHeight[i] );
fill(resetInk);
//
//End Program
