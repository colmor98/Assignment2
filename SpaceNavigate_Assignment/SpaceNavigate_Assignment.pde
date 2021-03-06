
/*
Author: Colm O'Reilly
Student number: C15502723

A game where a spaceship must navigate its way through space, avoiding barriers!

*/


void setup()
{
  size(900,562,P2D);
  smooth();  
  
  //load images
  Uni = loadImage("Uni.jpg");
  
  //load font
  font = loadFont("Bauhaus93-48.vlw");
  
  // random start values for obstacles
  barrier1.y = random(50, height - barrier1.h - 50);
  barrier2.y = random(50, height - barrier2.h - 50);
  barrier2.x = barrier1.x + width / 2;
  
  frameRate(40);
  rectMode(CENTER);
  smooth();
  for(int i=0;i<arcStartPositions.length;i++){
    arcStartPositions[i] = PI/8*i;
  }
  
  button[0] = width/2;
  button[1] = height/2;
  button[2] = 150;
  button[3] = 150;
  button[4] = 0;
  
  ps = new ParticleSystem(new PVector(width/2, 50));
  
   for (int i = 0; i < stars.length; i++)  
    {
      stars[i] = new Star ((color(200)),random(width),0,100);  //element i within stars is a new star with these properties
    }
}

//Globals
//Images
PImage Uni;

//Variables
float[] arcStartPositions = new float[3];
float arcBoundSize, arcMaxBoundSize = 500;
int[] button = new int[5];
int col=0;
int enter = 0;
int score = 0; 


//Font
PFont font;

//Classes
Star[] stars = new Star[1];
Rocket rocket = new Rocket();
Barrier barrier1 = new Barrier();
Barrier barrier2 = new Barrier();
ParticleSystem ps;



void mousePressed()
{
  if( (mouseY <(button[1] + button[3])) && (mouseY > (button[1])) ) 
  {
    if( (mouseX <(button[0]-20  + button[2])) && (mouseX > (button[0])) )
    {
      col = 124;
      delay(100);
      button[4] = 1;
    }
  }
  
}
void intro()
{
  background(Uni);
  
  pushMatrix();
    textFont(font,50);
    text("SPACE NAVI-G8",width/2-170,100);
  popMatrix();
  
  stroke(255);
  fill(col);
  ellipse(button[0],button[1],button[2],button[3]);
  fill(255);
  triangle(430,250, 430,320, 490,280);
  
  if (button[4] == 1)
  {
    enter = 1;
  }
}

void load()
{
  background(0);
  
  
  arcBoundSize = arcMaxBoundSize;
  for(float s:arcStartPositions){
    float arcLength = random(PI,8*PI/6);
    color c = color(random(0,255),random(0,255),random(0,255));
    stroke(c);
    fill(0);
    arc(width/2,width/2-170,arcBoundSize,arcBoundSize,s,s+arcLength);
    arcBoundSize-=10;
  }
  for(int i=0;i<arcStartPositions.length;i++){
    arcStartPositions[i]+=PI/8;
  }
  
  //Text
  //loading text outputted on screen
  textFont(font,40);
  fill(255);
      if (frameCount <= 50)
      {
         text("Making lunch..", width/2 - 140, height/2); 
      }
      if( frameCount <100 && frameCount >= 50)
      {
         text("Drinking coffee..", width/2 - 150, height/2); 
      }
      if( frameCount <150 && frameCount >= 100)
      {
         text("Quick trip to\nthe bathroom..", width/2 - 140, height/2-25); 
      }
      if( frameCount <200 && frameCount >= 150)
      {
         text("Safety check..", width/2 - 140, height/2); 
      }
      if(frameCount<250 && frameCount >=200)
      {
        text("Filling fuel!",width/2 - 110,height/2);
      }
  
}//end load


void game()
{
  background(0);
  
  pushMatrix();
  fill(4,23,88);
  rect(0, 0, width+900, 35); // top barrier
  rect(0, height , width+900, 35); // bottom barrier
  popMatrix();
  
  pushMatrix();
  fill(88,42,4);
  barrier1.display(); // barriers to be avoided
  barrier2.display();
  barrier1.update();
  barrier2.update();
  popMatrix();
  
  rocket.x = 75;
  rocket.display();
  rocket.update();
  
  // text
  textSize(20);
  fill(255);
  textAlign(LEFT);
  
  text("Score:", 10, 14); // score counter
  text(score, 70, 14);
    
  text("Lives:", 725, height - 1); // life counter
  text(rocket.lives, 780, height - 1);
  
  if (rocket.crashed) {
      textAlign(CENTER);
      text("Press r to restart else", width / 2, height - 40);
      text("Press e to exit",width/2, height - 21);
      pushMatrix();
        textSize(50);
        text("GAME OVER", width / 2, height / 2);
      popMatrix();
      
      if( (rocket.crashed == true) && ( score > 3) )
      {
        ps.addParticle();
        ps.run();
       text("New high score !", width/2, height/2-50);
      }
    }
  
}

void draw()
{
  background(255);
  
  if(frameCount <250)
  {
    load();
  }
  else
  {
    intro();
  }
  
  if(enter == 1 )
  {
    game();
    for (int i = 0; i < stars.length; i++)  
    {
      stars[i].display();  
      stars[i].move();     
    }
  }
  
}

void keyPressed() 
{
  if (key == 'r') {
    // reset all
    barrier1.y = random(50, height - barrier1.h - 50);
    barrier2.y = random(50, height - barrier2.h - 50);
    barrier1.x = 800;
    barrier2.x = barrier1.x + 400;
    barrier1.xSpeed = -4;
    barrier1.w = 10;
    barrier1.h = random(80, 120);
    barrier2.xSpeed = -4;
    barrier2.w = 10;
    barrier2.h = random(80, 120);
    rocket.crashed = false;
    rocket.x = 75;
    rocket.y = 500 / 2;
    rocket.ySpeed = 0;
    score = 0;
  }
  
  if(key == 'e'){
   exit(); 
  }
  
  if (key == CODED) {
    if (keyCode == UP) {
      rocket.ySpeed -= 1;
    }
    if (keyCode == DOWN) {
      rocket.ySpeed += 1;
    }
  }
  
}