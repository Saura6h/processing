class Car
{
  PVector loc;
 float speed;
  PImage carpic;
 Car()
  {
    loc=new PVector();
    carpic=loadImage("50_large_1_270.png");
    loc.x=width+10;
    loc.y=int(random(0,2))*60+65;
    speed=5;
  } 
  void show()
  {
    imageMode(CENTER);
    image(carpic,loc.x,loc.y,60,40);
    loc.x-=speed;
    if(loc.x<0)
    {
      loc.x=width+10;
      loc.y=int(random(0,2))*60+65;
      if(speed<24)
         {speed+=1;
          }score+=1;
       } 
  }
}
