void keyReleased()
{
  {
  if(keyCode == DELETE || keyCode == BACKSPACE) 
    {
      background(255);

      image(img,0,0);
    }
  }
  {
  if (key == 's' || key == 'S') saveFrame(timestamp()+"_##.png");

  }

  if (key == '1')
  {
    selectY = 4;
    selectX = 4;
    selectGlitch();
    
  }
  if (key == '2')
  {
    selectY = 10;
    selectX = 10;
    selectGlitch();
    
  }
  if (key == '3')
  {
    selectY = 20;
    selectX = 20;
   selectGlitch();
  }
}