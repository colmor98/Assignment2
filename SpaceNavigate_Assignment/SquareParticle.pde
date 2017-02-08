class SquareParticle extends Particle
{
  SquareParticle(PVector l)
  {
    super(l);
  }
  
  void display()
  {
    fill(random(255,20),lifespan);
    noStroke();
    rectMode(CENTER);
    rect(position.x, position.y,16,16);
}
}