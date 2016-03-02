

  void glitchA()
  {
      int x1 = (int) random(cropX, cropX+400); //select area
      int y1 = (int) random(cropY,cropY+335); //select area


      int x2 = round(x1 + random(0, 0)); //50 cool, 200 super  movement
      int y2 = round(y1 - random(-5, 0));


      int w = round(random(-100, 100)); //was at 450    block's size
      int h = round(random(25,50 ));
                    //line(x1+(w/2), y1+(h/2) , x2+(w/2), y2+(h/2));
                    //stroke(0);
      copy(x1,y1, w,h, x2,y2, w,h);
    
  }

  void glitchB()
  {
      int x1 = (int) random(cropX2, cropX2+400); //select area
      int y1 = (int) random(cropY2,cropY2+335); //select area


      int x2 = round(x1 + random(0, 0)); //50 cool, 200 super  movement
      int y2 = round(y1 - random(-5, 0));


      int w = round(random(-100, 100)); //was at 450    block's size
      int h = round(random(25,50 ));
                    //line(x1+(w/2), y1+(h/2) , x2+(w/2), y2+(h/2));
                    //stroke(0);
      copy(x1,y1, w,h, x2,y2, w,h);
    
  }











//void glitchR(){
//   int x1 = (int) random(580,950); //select area
//   int y1 = (int) random(250,600); //select area


//   int x2 = round(x1 + random(-100, 100)); //50 cool, 200 super 
//   int y2 = round(y1 - random(0, 200));


//   int w = round(random(15, 20)); //was at 450
//   int h = round(random(5,10 ));

//   copy(x1,y1, w,h, x2,y2, w,h);
//}