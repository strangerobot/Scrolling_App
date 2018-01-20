void addcard()
{
  
  if(cards.get(cards.size()-1).pos<1100)
  {
   card a=new card();
   cards.add(a);
  }
  
  
  
  
  
} 


void showcard()
{
  
 for(int i=cards.size()-1;i>=0;i--)
 {  
   cards.get(i).movecard();
   if(cards.get(i).pos>-100 && cards.get(i).pos<1400)
   cards.get(i).drawcard();
   
 }  
  
} 