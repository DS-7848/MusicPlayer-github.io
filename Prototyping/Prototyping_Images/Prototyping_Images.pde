/* Aspect Ratio
-
-
*/
//
//Display
fullScreen(); //Landscape
//size(500, 700); //portrait
int appWidth = displayWidth; //width:500
int appHeight = displayHeight; //height:700
println("Display VARS", "appWidth:"+appWidth, "appHeight:"+appHeight, "\n\t\t\t\t\tFullScreen, displayWidth:"+displayWidth, "displayHeight:"+displayHeight, "\n\t\t\t\t\tSet Values, width:"+width, "height:"+height);
//
//Population
float imageDivX = appWidth*1/4;
float imageDivY = appHeight*1/6;
float imageDivWidth = appWidth*1/2;
float imageDivHeight = appHeight*4/5;
//
//Image Aspect Ratio Vars & Algorithm
//Directory or Pathway, Concatenation
String upArrow = "../../";
String folder = "Images/";
String BestOfMe = "BestOfMe";
String fileExtensionJPG = ".jpg";
String imagePathway1 = upArrow + folder + BestOfMe + fileExtensionJPG;
//println("BestOfMe Pathway:", imagePathway1);
//Image Loading & Aspect Ratio
PImage image1 = loadImage( imagePathway1 );
int imageWidth1 = 500;
int imageHeight1 = 500;
//Aspect Ratio
float image1AspectRatio_GreaterOne = ( imageWidth1 >= imageHeight1 ) ? imageWidth1/imageHeight1 : imageHeight1/imageWidth1 ;
//
println(image1AspectRatio_GreaterOne);
//DIV
rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight );
//
image( image1, imageDivX, imageDivY, imageDivWidth, imageDivHeight );
//image( image1, imageDivX, imageDivY, imageWidthAdjusted, imageHeightAdjusted );
