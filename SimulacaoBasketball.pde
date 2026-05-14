import java.util.LinkedList;

// Mudei o nome para 'bolas' (evita possíveis conflitos)
LinkedList<Basketball> bolas = new LinkedList<Basketball>();

void setup() {
   size(800,600);
   smooth();
}

void draw() {
   background(255);
   // For-each mais limpo
   for (Basketball bola : bolas) {
      bola.update();
      bola.show();
   }
}

void mousePressed() {
   bolas.add(new Basketball(mouseX,mouseY)); 
}

class Basketball {
  float x,y;
  float vy = 0;
  float ay = 0.1;
  float radius = 30;
  
  Basketball(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  void update() {
    vy += ay;
    y += vy;
    
    if(y + radius >= height) {
      y = height - radius;
      vy = -0.9 * vy;
    }
  }
    
  void show() {
      fill(255, 140, 0); // Laranja
      stroke(0);
      strokeWeight(2);
      ellipse(x, y, radius * 2, radius * 2);
      
      // Detalhes da bola
      noFill();
      arc(x, y, radius * 1.8, radius * 1.8, PI/4, 3*PI/4);
      arc(x, y, radius * 1.8, radius * 1.8, 5*PI/4, 7*PI/4);
      line(x - radius * 0.7, y - radius * 0.7, x + radius * 0.7, y + radius * 0.7);
      line(x - radius * 0.7, y + radius * 0.7, x + radius * 0.7, y - radius * 0.7);
  }
}
