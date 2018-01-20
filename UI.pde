void drawui()
{ 
  rectMode(LEFT);
//  fill(255);
//  rect(0,0,720,200);
  imageMode(CORNER);
  image(UIBG,0,0,width,370);
   

 
  textFont(Distance);
  
  textSize(30);
  textAlign(CENTER,CENTER);
  if(target-int(distance/100)>=0)
  {
  fill(#262525,240);
  rect(0,height-100,width,height);
  fill(255,200);
  text((target-int(distance/100))+"m left to target",width/2,height-50);
  }
  else
  {
   fill(255,245);
   rect(0,height-100,width,height);
   fill(0,200);
   text(abs(target-int(distance/100))+"m beyond target",width/2,height-50); 
    
  }
  
  
  
  textAlign(LEFT,TOP);
  textSize(72.5);

  fill(0);
  text(int(distance)/100.0+"m",50,60);
  textFont(Target);
    
  textSize(20.43);
  textAlign(LEFT,TOP);
  text("SCROLLED",60,128.5);
  textFont(Scrolls);
  
  textSize(56.5);
  textAlign(RIGHT,TOP);
  text(int(speed),width-40,60);
  
  textFont(Speed);
  textSize(16.75);
  textAlign(RIGHT,TOP);
  textLeading(18);
  text("POSTS\n/HOUR",width-45,110);

} 