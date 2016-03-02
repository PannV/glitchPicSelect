// P_4_1_2_02.pde
// 
// Generative Gestaltung, ISBN: 978-3-87439-759-9
// First Edition, Hermann Schmidt, Mainz, 2009
// Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
// Copyright 2009 Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
//
// http://www.generative-gestaltung.de
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
 
/**
 * image feedback process.
 * 
 * KEYS
 * del, backspace      : clear screen
 * s                   : save png
 */


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