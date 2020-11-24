Star[] starArray;
int[] statusArray;
void setup() {
size(400,400);
background(0);
statusArray = new int[600];
starArray = new Star[600];
for(int i = 0; i < starArray.length;i++)
{
  starArray[i] = new Star();
  statusArray[i] = 0;
}
starArray[starArray.length-1] = new Oddball();
}

void draw() {
background(0);
  for(int i = 0; i < starArray.length;i++) {

  if ((starArray[i].myX>315)||(starArray[i].myX<-15)||(starArray[i].myY>315)||(starArray[i].myY<-15)) {
    statusArray[i] = 1;
}
 if ((starArray[i].myX==150)||(starArray[i].myX==150)) {
      statusArray[i] = 0;
}
  if (statusArray[i] == 0) {
    starArray[i].zoom();
    starArray[i].show();
  } 
  if (statusArray[i] == 1) {
    starArray[i].zoomB();
    starArray[i].showB();
  }
}
}

class Star{
  float myX, myY, myA, mySpeed, myN;
  Star(){
    myX = 150;
    myY = 150;
    myA=((float)(Math.random()*360));
    mySpeed = (float)(Math.random());
    myN = 10;
    
  }
  void zoom(){
    myX+= mySpeed*cos(myA);
    myY+= mySpeed*sin(myA);
    myN+=.1;
  }
  
  void show(){
    fill(255);
    circle(myX,myY,myN);
  }
  void zoomB(){
    myX-=mySpeed*cos(myA);
    myY-=mySpeed*sin(myA);
    myN-=.1;
   }
  
  void showB(){
    fill(255,0,0);
    circle(myX,myY,myN);
  }}

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
