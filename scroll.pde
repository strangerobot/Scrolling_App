void scroll()
{    

    if(count==0 && mousePressed)
    {
      previousmouseY=mouseY;
      count++;
    }
  
    if(count>0)
    {
    if(mousePressed)
    scrollamount=(mouseY-previousmouseY);
    previousmouseY=mouseY;


    }
    distance();
    if(maxscroll<abs(scrollamount))
    maxscroll=abs(scrollamount);
    maxspeed=maxscroll/25;
    scrollfriction();
    speed=distance*10*60/(millis()/1000);
   
}

void scrollfriction()
{
   scrollamount-=scrollamount/10;
}