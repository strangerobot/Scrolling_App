float previousmouseY;
float scrollamount=0;
float friction=0.01;
float distance=0.00000001;
float maxscroll=0;
float speed;
int target;
float maxspeed;
ArrayList <card> cards;
int count=0; 
int bgcolor=0;
PFont Distance,Target,Scrolls,Speed;
PImage UIBG,BG;
int keepscrolling=0;
  
void setup()
{
  Distance = createFont("black.otf",72.5,true);
  Target=createFont("black.otf",20.43,true);
  Scrolls=createFont("black.otf",56.5,true);
  Speed=createFont("Normal.otf",16.575,true);
  
  target=int(random(30,50));
  
  UIBG=loadImage("bg.png");
  BG=loadImage("bgstart.png");
  
 cards = new ArrayList();
 card a=new card();
  fullScreen();
//pixelDensity(1);//
 //size(720,1080);
 previousmouseY=0;
 cards.add(a);
 noStroke();
}

void draw()
{ 
  stroke(255,50);
  
  if(bgcolor>0)
  background(bgcolor);
  else
  {
  background(0);
  imageMode(CENTER);
  image(BG,width/2,height/2);
  }
  
  
  scroll();
  addcard();
  showcard();
  showscore();
  drawui();
  if(target-int(distance/100)<0 && keepscrolling<10)
  {
  if(mousePressed)
  keepscrolling++;
  drawdone();
  }
 
}

void mouseReleased()
{
 count=0; 
}

void mousePressed()
{ 
 bgcolor=255;
}