Star[] starArray;
void setup() {
size(300,300);
background(0);
starArray = new Star[600];
for(int i = 0; i < starArray.length;i++)
{
  starArray[i] = new Star();
}
starArray[starArray.length-1] = new Oddball();
}

void draw() {
background(0);
  for(int i = 0; i < starArray.length;i++)
{
  starArray[i].show();
  starArray[i].zoom();
}
}

class Star{
  float myX, myY, myA, mySpeed;
  Star(){
    myX = 150;
    myY = 150;
    myA=((float)(Math.random()*360));
    mySpeed = (float)(Math.random());
  }
  void zoom(){
    myX+= mySpeed*cos(myA);
    myY+= mySpeed*sin(myA);
  }
  
  void show(){
    fill(255);
    circle(myX,myY,10);
  }
  
}

class Oddball extends Star {
  void zoom() {
     myX+=(float)(Math.random())*4-2;
     myY+=(float)(Math.random())*4-2;
  }
  void show() {
    fill(100);
    circle(myX,myY,20);
  }
}
