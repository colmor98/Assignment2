/*
Author: Colm O'Reilly
Student number: C15502723

A game where a spaceship must navigaye its way through space!

*/

void setup()
{
  size(900,562);
  
  //load images
  Uni = loadImage("Uni.jpg");
  
  frameRate(40);
  rectMode(CENTER);
  smooth();
  for(int i=0;i<arcStartPositions.length;i++){
    arcStartPositions[i] = PI/8*i;
  }
  
}

//Globals
//Images
PImage Uni;

//Variables
float[] arcStartPositions = new float[3];
float arcBoundSize, arcMaxBoundSize = 500;

void intro()
{
  background(Uni);
  
  stroke(255);
  fill(0);
  ellipse(width/2,height/2,150,150);
  fill(255);
  triangle(430,250, 430,320, 490,280);
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
  
}//end load

void draw()
{
  background(255);
  
  load();
}