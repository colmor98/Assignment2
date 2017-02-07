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
}

void draw()
{
  background(255);
  
  intro();
}