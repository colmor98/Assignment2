class Rocket
{
    float x;
    float y;
    
    Rocket() {
      x = 75;
      y = 500 / 2;
    }
  
  void display() {
    
    rocketShip();
  }
  
  
  void rocketShip() {
    noStroke();
    fill(#Ff0000);
    triangle(x - 15, y - 12, x- 35, y - 20, x - 30, y - 10); //wings
    triangle(x - 15, y + 12, x- 35, y + 20, x - 30, y + 10);
    fill(random(10, 40), 100, 90); // flames colour change
    triangle(x - 60, y, x - 30, y + 8, x - 30, y - 8); // flames
    triangle(x - 50, y + 10, x - 30, y + 8, x - 30, y);
    triangle(x - 50, y - 10, x - 30, y - 8, x - 30, y);
    fill(#B7B7B7);
    ellipse(x, y, 80, 30); // body
    triangle(x + 29, y - 11, x + 60, y, x + 29, y + 11);
    fill(#ff0000);
    rect(x - 35, y - 1, 18, 2);
    fill(#51C2ED);
    ellipse(x + 20, y, 20, 15); //window
  }
}