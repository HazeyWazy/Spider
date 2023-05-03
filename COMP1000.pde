/*
Student ID: 47743220
Student Name: Htet Yamin Ei
*/

int x = 35; //spider's x
int y = 35; //spider's y
int movement = 70;

int rectX1;
int rectY1;
int rectX2;
int rectY2;

void setup() {
  size(700, 700);
  rectX1 = 315;
  rectX2 = 455;
  rectY1 = 70 * (int)random(2,9); //<>//
  rectY2 = 70 * (int)random(2,9); //<>//
}

void draw() {
  background(#FF7C00);  //orange background  
  
  //web
  stroke(#EDEDED);
  line(x, 0, x, y);
  
  //spider body
  fill(0);
  noStroke();
  circle(x, y, 18);
  
  //eyes
  fill(255);
  circle(x-4, y-2, 4); //left eye
  circle(x+4, y-2, 4); //right eye
  
  //smile
  noFill();
  stroke(255);
  arc(x, y, 11, 11, radians(30), radians(150));
  
  //legs
  stroke(0);
  strokeWeight(1.5);
  
  line(x+5, y-8, x+20, y-26);
  line(x+20, y-26, x+34, y-6); //right 1st leg
  
  line(x-5, y-8, x-20, y-26);
  line(x-20, y-26, x-34, y-6); //left 1st leg
  
  line(x+8, y-5, x+20, y-13);
  line(x+20, y-13, x+34, y+12); //right 2nd leg
  
  line(x-8, y-5, x-20, y-13);
  line(x-20, y-13, x-34, y+12); //left 2nd leg
  
  line(x+9, y, x+20, y);
  line(x+20, y, x+34, y+30); //right 3rd leg
  
  line(x-9, y, x-20, y);
  line(x-20, y, x-34, y+30); //left 3rd leg
  
  line(x+5, y+6, x+20, y+15);
  line(x+20, y+15, x+15, y+30); //right 4th leg
  
  line(x-5, y+6, x-20, y+15);
  line(x-20, y+15, x-15, y+30); //left 4th leg  
  
  //obstacles  
  fill(0);
  stroke(255);
  rectMode(CENTER);
  rect(rectX1, rectY1, 70, 280); //<>//
  rect(rectX2, rectY2, 70, 280);
  
  //character boundaries
  if (x + 35 > width) {
    x = 35;
  } 
  
  if (x - 35 < 0) {
    x = 665;
  }
  
  if (y + 35 > height) {
    y = 35;
  }
  
  if (y - 35 < 0) {
    y = 665;
  }
  
  //1st rectangle collision   //<>//
  if (rectX1 - x == 0 && rectY1 - y <= 105 && rectY1 - y >= -105) {
    background(#FF7C00);
    textAlign(CENTER, CENTER);
    textSize(30);
    text("Game Over", width/2, height/2);
    noLoop();
  }
  
  //2nd rectangle collision
  if (rectX2 - x == 0 && rectY2 - y <= 105 && rectY2 - y >= -105) {
    background(#FF7C00);
    textAlign(CENTER, CENTER);
    textSize(30);
    text("Game Over", width/2, height/2);
    noLoop();
  }
   //<>//
}  //end of void draw

//character movement
void keyReleased() {
  
  if (keyCode == UP) {
    y -= movement;
  }
  
  if (keyCode == DOWN) {
    y += movement;
  }
  
  if (keyCode == LEFT) {
    x -= movement;
  }
  
  if (keyCode == RIGHT) {
    x += movement;
  }
}
