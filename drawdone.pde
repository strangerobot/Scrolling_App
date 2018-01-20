void drawdone()
{
  PImage foreground;
  foreground=loadImage("foreground.png");
  
  int padding=90;
  int size=700;
   rectMode(CENTER); 
   fill(0,200);
  rect(width/2,height/2,10000,10000);
  rect(width/2,height/2,width-padding,size,10);
  fill(255);
  rect(width/2,height/2,width-padding,size,10);
  imageMode(CENTER);
  image(foreground,width/2,height/2);
  
}