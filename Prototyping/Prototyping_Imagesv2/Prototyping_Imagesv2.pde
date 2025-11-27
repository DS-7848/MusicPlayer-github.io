/* Aspect Ratio
-
-
*/
//
//Display
//fullScreen(); //Landscape
size(500, 700); //portrait
int appWidth = displayWidth; //width:500
int appHeight = displayHeight; //height:700
println("Display VARS", "appWidth:"+appWidth, "appHeight:"+appHeight, "\n\t\t\t\t\tFullScreen, displayWidth:"+displayWidth, "displayHeight:"+displayHeight, "\n\t\t\t\t\tSet Values, width:"+width, "height:"+height);
//
//Population
float imageDivX = appWidth*1/4;
float imageDivY = appHeight*1/10;
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
float image1AspectRatio_GreaterOne = ( imageWidth1 >= imageHeight1 ) ? float(imageWidth1)/float(imageHeight1) : float(imageHeight1)/float(imageWidth1) ;
//
println("Aspect Ratio >1", image1AspectRatio_GreaterOne, "Testing for Decimals, formula", imageWidth1/imageHeight1);
//Algorithm Decisions (choice)
float imageWidthAdjusted1 = imageDivWidth;
float imageHeightAdjusted1 = ( imageWidth1 >= imageDivWidth ) ? imageWidthAdjusted1 * image1AspectRatio_GreaterOne : imageWidthAdjusted1 / image1AspectRatio_GreaterOne ;
//Aspect Ratio
/*
imageWidth1
imageDivWidth
imageHeight1
imageDivHeight1
imageDivWidth, imageDivHeight
*/
//if () {} else {} //End If Aspect Ratio
if ( imageHeightAdjusted1 > imageDivHeight) {
  println("Image doesn't fit, program ended ... Fatal Flaw, must be solved ... Image doesn't show.");
  exit();
  //
}
//

//DIV
rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight );
//
//image( image1, imageDivX, imageDivY, imageDivWidth, imageDivHeight );
image( image1, imageDivX, imageDivY, imageWidthAdjusted1, imageHeightAdjusted1 );
//
//End Program
