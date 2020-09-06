ImageEditor myIE;
void setup()
{
  size(400,400);
  background(128);
  myIE = new ImageEditor("teddy.jpg");
  myIE.resizeWindowToImage(1,1);
}

void draw()
{   
 for (int i = 0; i<500; i = i + 1)
 {
  myIE.startEditing();
  int y = (int)random(0, myIE.height());
  int x = (int)random(0, myIE.width());

  int r = myIE.getRedAt(x,y);
  int g = myIE.getGreenAt(x,y);
  int b = myIE.getBlueAt(x,y);
  
  int brightness = (r+g+b)/3;
      
  if (random(0,255) < r)
  {
    stroke(255,0,0);
    point(x,y);
  }
    
  if (random(0,255) < g)
  {
    stroke(0,255,0);
    point(x,y);
  }
    
  if (random(0,255) < g)
  {
    stroke(0,0,255);
    point(x,y);
  }
    
  if(random(0,255) > brightness)
  {
    stroke(0);
    point(x,y);
   }
 }
 myIE.stopEditing();
 save("resultInWindow.png");

}
