int[] numbers = new int[11];
boolean auto = false;
int numDice = 150;
ArrayList<Dice> dicea = new ArrayList<Dice>();
void setup(){
frameRate(600);
size(1080,720);
if(auto == false){
for(int n = 1; n <= numDice; n++){
dicea.add(new Dice());
}
noLoop();
}
}
void draw(){
numbers[0] = 0;
numbers[1] = 0;
numbers[2] = 0;
numbers[3] = 0;
numbers[4] = 0;
numbers[5] = 0;
numbers[6] = 0;
numbers[7] = 0;
numbers[8] = 0;
numbers[9] = 0;
numbers[10] = 0;
 if(auto == false){
  background(127);
for(Dice dice : dicea){
dice.roll();
dice.show();
}
 }else{
   dicea.add(new Dice());
   background(127);
for(Dice dice : dicea){
  dice.show();
}
}
for(int a = 2; a <= 12; a++){
text(a+": "+numbers[a-2],115+60*a,675);
}
text("Dice rolled: "+dicea.size(),115,675);
fill(100);
 rect(100,100,100,50);
 fill(255);
 text("Toggle Auto",117,128);
 line(110,500,210,500);
 line(210,500,210,500-numbers[10]*1);
 line(110,500,110,500-numbers[0]*1);
 line(110,500-numbers[0]*1,120,500-numbers[1]*1);
 line(120,500-numbers[1]*1,130,500-numbers[2]*1);
 line(130,500-numbers[2]*1,140,500-numbers[3]*1);
 line(140,500-numbers[3]*1,150,500-numbers[4]*1);
 line(150,500-numbers[4]*1,160,500-numbers[5]*1);
 line(160,500-numbers[5]*1,170,500-numbers[6]*1);
 line(170,500-numbers[6]*1,180,500-numbers[7]*1);
 line(180,500-numbers[7]*1,190,500-numbers[8]*1);
 line(190,500-numbers[8]*1,200,500-numbers[9]*1);
 line(200,500-numbers[9]*1,210,500-numbers[10]*1);
}
void mousePressed(){
  if(mouseX <= 200 && mouseX >= 100 && mouseY >= 100 && mouseY <= 150){
  if(auto){
  auto = false;
  noLoop();
  dicea = new ArrayList<Dice>();
  for(int n = 1; n <= numDice; n++){
dicea.add(new Dice());
}
  } else{
  auto = true;
  dicea = new ArrayList<Dice>();
  loop();
  }
  }else{
  if(auto == false){
  redraw();
  } else{
  dicea = new ArrayList<Dice>();
  }
  }
}
class Dice{
int myX;
int myY;
int a;
int b;
int combinedroll;
  Dice(){
  roll();
  }
  void roll(){
  a = (int)(Math.random()*6)+1;
  b = (int)(Math.random()*6)+1;
  combinedroll = a+b;
  }
  void show(){
  numbers[combinedroll - 2] = numbers[combinedroll - 2] + 1;
  myY = 650 - numbers[combinedroll - 2] * 25;
  myX = 100 + combinedroll * 60;
  fill(255);
  rect(myX,myY,25,25,6,6,6,6);
  float offset = 2.5;
  fill(0);
  if(a == 4  || a == 5 || a ==6){
  ellipse(myX + 5+ offset,myY + 5+offset,3,3);
  }
  if(a == 6){
  ellipse(myX + 10+ offset,myY + 5+ offset,3,3);
  }
  if(a == 4 || a == 5 | a == 6 || a == 2 || a == 3){
  ellipse(myX + 15+ offset,myY + 5+ offset,3,3);
  }
  if(a == 1 || a == 3 || a == 5){
  ellipse(myX + 10+ offset,myY + 10+ offset,3,3);
  }
  if(a == 2 || a == 3 || a == 4 || a == 5 || a == 6){
  ellipse(myX + 5+ offset,myY + 15+ offset,3,3);
  }
  if(a == 6){
  ellipse(myX + 10+ offset,myY + 15+ offset,3,3);
  }
  if( a == 4|| a ==5 || a ==6){
  ellipse(myX + 15+ offset,myY + 15+ offset,3,3);
  }
  fill(255);
  rect(myX+25,myY,25,25,6,6,6,6);
  fill(0);
  if(b == 4  || b == 5 || b ==6){
  ellipse(myX + 5+offset + 25,myY + offset+ 5,3,3);
  }
  if(b == 6){
  ellipse(myX + 10 + offset+ 25,myY+ offset + 5,3,3);
  }
  if(b == 4 || b == 5 | b == 6 || b == 2 ||b == 3){
  ellipse(myX + 15 + offset+ 25,myY + offset+ 5,3,3);
  }
  if(b == 1 ||b == 3 || b == 5){
  ellipse(myX + 10 + offset+ 25,myY + offset+ 10,3,3);
  }
  if(b == 2 || b == 3 || b == 4 || b == 5 || b == 6){
  ellipse(myX + 5 + offset + 25,myY + offset+ 15,3,3);
  }
  if(b == 6){
  ellipse(myX + 10+ offset + 25,myY + 15+ offset,3,3);
  }
  if( b == 4|| b ==5 || b ==6){
  ellipse(myX + 15+ offset + 25,myY + 15+ offset,3,3);
  }
  }
}
