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
}

//Globals
//Images
PImage Uni;

void intro()
{
  background(Uni);
  
  stroke(255);
  fill(0);
  ellipse(width/2,height/2,150,150);
  fill(255);
  triangle(430,250, 430,320, 490,280);
}

void draw()
{
  background(255);
  
  intro();
}