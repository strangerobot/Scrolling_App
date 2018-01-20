class card{
 
  public
  float padding=90;
  float pos=1400;
  float size;
  color col;
  float wide,wide2,wide3;

  void drawcard()
  {
  
  noStroke();
  rectMode(CENTER); 
  fill(0,10);
  rect(width/2,pos+10,width-padding,size,10);
  fill(col);
  rect(width/2,pos,width-padding,size,10);
  fill(0,30);
  ellipse(padding+25,pos-35,80,80);
  rectMode(CORNERS); 
  rect(padding+25+60,pos-65,width-padding-wide,pos-25,10);
  fill(0,15);
  rect(padding+25+60,pos,width-padding-wide2,pos+20,10);
  rect(padding+25+60,pos+40,width-padding-wide3,pos+60,10);
  }
  
  void movecard()
  {
  pos+=scrollamount;
  }
  
  card()
  {
    size=250;
    col=color(random(0,255),random(0,255),random(0,255));
    wide=random(20,150);
    wide2=random(20,160);
    wide3=random(20,160);
    println(wide);
  }
  
};