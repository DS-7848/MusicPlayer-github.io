//Display
fullScreen(); //Landscape
//size(500, 500); //portrait
int appWidth = displayWidth; //width:500
int appHeight = displayHeight; //height:500
//println("Display VARS", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\n\t\t\t\t\tFullScreen, displayWidth:"+displayWidth, "displayHeight:"+displayHeight, "\n\t\t\t\t\tSet Values, width:"+width, "height:"+height);
//
//Population
int numberOfDIVs = 3;
float[] stringDivX = new float[numberOfDIVs];
float[] stringDivY = new float[numberOfDIVs];
float[] stringDivWidth = new float[numberOfDIVs];
float[] stringDivHeight = new float[numberOfDIVs];
stringDivX[0] = appWidth*1/4;
stringDivY[0] = appHeight*1/10;
stringDivWidth[0] = appWidth*1/3;
stringDivHeight[0] = appHeight*1/10;
stringDivX[1] = stringDivX[0]; //Cascading VARs
stringDivY[1] = appHeight*3/10;
stringDivWidth[1] = appWidth*1/6;
stringDivHeight[1] = stringDivHeight[0]; //Cascading VARs
stringDivX[2] = stringDivX[0]; //Cascading VARs
stringDivY[2] = appHeight*5/10;
stringDivWidth[2] = appWidth*3/8;
stringDivHeight[2] = stringDivHeight[0]; //Cascading VARs

String[] text = new String[numberOfDIVs];
text[0] = "Test before final attempt";
text[1] = "Might be used for song times";
text[2] = "Might use for Author";
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
float divHeightGabriola = stringDivHeight[0];
float gabriolaAspectRatio = fontSizeGabriola / divHeightGabriola;
fontSize = stringDivHeight[0]*gabriolaAspectRatio;
println("gabriola Aspect Ratio:", gabriolaAspectRatio);
println(); //Skip a line
//
for (int i=0; i<numberOfDIVs; i++) {
  rect( stringDivX[i], stringDivY[i], stringDivWidth[i], stringDivHeight[i] );
}

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
int iWhile=0; //counts iterations of WHILE
for ( int i=0; i<numberOfDIVs; i++ ) {
  while ( textWidth( text[i] ) > stringDivWidth[i] ) {
    iWhile++;
    //ERROR infinite loop, requires exit() & println()
    fontSize *= constantDecrease; //fontSize = fontSize*0.99;
    textFont(titleFont, fontSize);
  } //End WHILE Error Check Text-wrap
  println("Iterations of WHILE", iWhile, "\tPixel difference of divWidth & textWidth:", stringDivWidth[i]-textWidth( text[i] ), "\tUsing", constantDecrease*100+"%" );
} //End FOR Loop, Font Size Check in DIVs


//WHILE Error Check
for ( int i=0; i<numberOfDIVs; i++ ) {
  text( text[i], stringDivX[i], stringDivY[i], stringDivWidth[i], stringDivHeight[i] );
}
fill(resetInk);
//
//End Program
//Future reference, when working on final project replace "numberOfDIVs" with actual amount. left it as that in the code for personal refrence when working on the final just in case I use more or less than 3 different variables.
