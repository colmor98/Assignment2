class Barrier
{
  float x;
  float xSpeed;
  float y;
  float h; // height
  float w; // width
 
  Barrier() {
    x = 800;
    xSpeed = -4;
    y = 50;
    w = 10;
    h = 100;
  }
  
  void display()
  {
    noStroke();
    rect(x, y, w, h,30);
  }
  void update() 
  {
    x += xSpeed;
    
    if (x <= 0) {
      x = 800;
      xSpeed -= 0.5;
      y = random(50, height - 150);
      h = random(80, 120);
      score++;
    }
  
}
}