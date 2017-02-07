class Star    
{
    color c;  
    float x;  // x co-ordinate
    float y;  //y co-ordinate
    float ys; //y co-ordinate movement
    
    Star (color c_, float x_, float y_, float ys_)  
    {
      c = c_;    //Renaming the variables for use in the object
      x = x_;    
      y = y_;    
      ys = ys_;  
    }

void display()  //Controls the appearance of the shape
{
  ellipseMode(CENTER); 
  fill(c);      
  noStroke();       
  ellipse(random(width),y,10,10);  //shape of the ellipse created every time
}

void move()  
{
  y = y + ys;      //The y co-ordinate is the sum of the y co-ordinate plus the y speed variable
  if (y > height)  
  {
    y = 0;         
  }
}
}