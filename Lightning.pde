int startX = -500;
int startY = 500;
int endX = -500;
int endY = 500;
int dead = 0;


void setup()
{
  size(1000,1000);
  strokeWeight(10);
    frameRate(30);
}
void mousePressed(){
  startX=500;
  startY=0;
  endX=500;
  endY=0;
  bolt();
  dead = 1;
  if (dead==1)
    deadeye();

}

void draw(){
  if(Math.random() < 0.05){
    background(255,255,255);
    pig();
  }
  //background(255,255,255);
}
  
void bolt() {
   //stroke((float)(Math.random()*256),(float)(Math.random()*256),(float)(Math.random()*256));
   stroke(252,193,30);
   strokeWeight(10);  
 while(endX<1000){
  endX = startX + (int)(Math.random()*95)-45;
  endY = startY + (int)(Math.random()*50);
 line(startX,startY,endX,endY);
 startX=endX;
 startY=endY;
 }
}

void deadeye()
{
  stroke(219,76,218);
  strokeWeight(75);
  translate(250,250);
  scale(0.5);
  line(175,450,325,600);
  line(325,450,175,600);
  line(675,450,825,600);
  line(825,450,675,600);
  scale(2);
  translate(-250,-250);
}
void pig()
{
  strokeWeight(10);
  translate(250,250);
  scale(0.5);
  fill(0,0,0);
  ellipse(500,500,780,680);
  ellipse(560,150,140,140);
  ellipse(250,220,145,145);
  noStroke();
  fill(109,226,73);
  ellipse(500,500,750,650);
  ellipse(560,150,115,115);
  ellipse(250,220,115,115);
  fill(0,0,0);
  ellipse(255,225,55,55);
  ellipse(560,155,55,55);
  fill(115,167,0);
  rect(475,582,45,100);
  ellipse(475,631,150,100);
  ellipse(515,631,150,100);
  fill(200,252,13);
  ellipse(425,545,160,160);
  ellipse(575,545,160,160);
  ellipse(500,500,250,150);
  ellipse(410,515,100,100);
  ellipse(590,515,100,100);
  rect(425,525,150,100);
  fill(21,57,15);
  ellipse(440,530,60,70);
  ellipse(560,540,60,60);
  ellipse(560,532,50,55);
  ellipse(255,225,40,40);
  ellipse(560,155,40,40);
  fill(54,136,32);
  ellipse(740,530,125,125);
  ellipse(240,530,125,125);
   fill(255,255,255);
  ellipse(750,520,125,125);
  ellipse(250,520,125,125);
  fill(0,0,0);
  ellipse(775,520,40,40);
  ellipse(230,520,40,40);
  fill(225,225,225);
 scale (2);
 translate(-250,-250);
}

