


import java.util.Calendar;



PImage img;

int selectX = 4;
int selectY = 4;
int tileCount = selectX*selectY;
PImage[] imageTiles = new PImage[tileCount];

int tileWidth, tileHeight;

int cropX = 0;
int cropY = 0;

int cropX2 = 0;
int cropY2 = 0;


boolean selectMode = true;
boolean hidebox = false;
int state = 1;


void setup() 
{
  size(1279, 1920);
  img = loadImage("021116_NYFW2_0051.png");
  noCursor();
  //fullScreen(); 
  background(0);
  image(img,0,0);
  //image(img,0,0);
  frameRate(120);
  tileWidth = width/selectY;
  tileHeight = height/selectX;
  println("state:"+ state+" " + "select area "+state);
}

void draw() 
{
  
  
  //glitchRight();
  if (state == 1) 
  {
   // in selection mode, a white selection rectangle is drawn over the image
   cropX = constrain(mouseX, 0, width-tileWidth);
   cropY = constrain(mouseY, 0, height-tileHeight);    
   image(img, 0, 0);
   noFill();
   stroke(0, 255);
   rect(cropX, cropY, tileWidth, tileHeight);
   

  } 
  else if(state == 2)
  {
   cropX2 = constrain(mouseX, 0, width-tileWidth);
   cropY2 = constrain(mouseY, 0, height-tileHeight);    
   image(img, 0, 0);
   noFill();
   stroke(0, 255);
   rect(cropX2, cropY2, tileWidth, tileHeight);

   
          
  }
  else if(state == 0)
  {
    glitchA(); 
    glitchB(); 
    
    hidebox = true;
    
  }
  
  

}
 
void mouseReleased(){
  //selectMode = false;
  background(255);
      
  image(img,0,0);
  state = (state+1)%3;
  println("state:"+ state);
  
}

String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}