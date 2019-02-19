float ypos=110;
PImage mycar;
Car car;
float score=0;
void setup()
{
  size(800,200);
  mycar=loadImage("8_bit_racer.png");
  car=new Car();
  noLoop();
}
void draw()
{
  background(135);
  line(0,height/2,width,height/2);
  fill(0);
  rect(0,0,width,40);
  fill(0);
  rect(0,160,width,50);
  imageMode(CENTER);
  image(mycar,50,ypos,60,40);
  car.show();
  fill(250);
  textSize(10);
  text("Score: "+score,720,20);
  if (keyPressed)
  {
    if(keyCode==UP && ypos>63)
    {
      
        ypos-=8;
      
    }
    if(keyCode==DOWN && ypos<142)
        {
        ypos+=8;
        } 
  }
  if((ypos<110 && (car.loc.x-30)<50 && car.loc.y==65) || (ypos>90 && (car.loc.x-30)<50 && car.loc.y==125))
  {
    background(25,25,145);
    noLoop();
    fill(250);
    textAlign(CENTER);
    textSize(80);
    text("Game Over",width/2,height/2);
    fill(250);
    textAlign(CENTER);
    textSize(20);
    text("SCORE:"+score,width/2,height/2+80);
    fill(250);
    textAlign(CENTER);
    textSize(30);
    text("Press any key to restart",width/2,height/2+30);
    car.loc.x=width+10;
    car.loc.y=int(random(0,2))*60+65;
    score=0;
    car.speed=5;
  }
}
void keyPressed()
{
  loop();
}
