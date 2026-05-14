float x = 0;
void setup() {
  size(600,600);
  background(#B0FCEA);
  noStroke();
}

void draw() {
  background(#A2FAF2);
  
  for(int i = 0; i < 10; i++) {
    
    fill(#D7AAFF);
    ellipse(x, 200, 120, 60);
    
    fill(#D7AAFF);
    triangle(x - 60, 200, x - 90, 170, x - 90, 230);
  
    x += 2;
    
    if(x > width + 60) {
      x = -60;
    }
  }
}
