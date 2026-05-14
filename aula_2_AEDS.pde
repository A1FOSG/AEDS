int[][] grid;
int n = 36;

void IniciarGrid() {
 
  grid = new int[n][n];
  for(int i = 0; i < n; i++) 
    for(int j = 0; j < n; j++) 
      grid[i][j] = random(1) < 0.7 ? 1 : 0;
      // SOBRE O RANDOM() ---> varia de 0 a 1. se fosse random(2) variaria de 0 a 2.
      // SOBRE O 0.7 ----> a chance de vir '1' é de 70 por cento
      // ponto superior da tela inteira é (0,0)
}
      
      void DesenharGrid() {
        
        float l = width/(float)n;
        float a = height/(float)n;
        
        for(int i = 0; i < n; i++) {
          for(int j = 0; j < n; j++) {
            fill(255*grid[i][j]);
             rect(i*l, j*a, l, a);
            // ponto superior esquerdo(x), ponto superior esquerdo(y), largura(l) e altura(a)
          }
        }
      }
        
        int VizinhosVivos(int i, int j) {
          int viz = -grid[i][j];
          for(int c = -1; c <= 1; c++) { 
           for(int l = -1; l <= 1; l++) {
            viz += grid[(i+c+l)%n][(j+c+l)%n];
           
       }
       
    }
    return viz; 
  
}

void atualizandoGrid() {
 int[][] novoGrid = new int[n][n];
 for(int i = 0; i < n; i++) {
   for(int j = 0; j < n; j++) {
     int viz = VizinhosVivos(i, j);
     if(grid[i][j] == 1) {
       novoGrid[i][j] = (viz == 2 || viz == 3) ? 1 : 0;
   }else {
       novoGrid[i][j] = viz == 3 ? 1 : 0;
       
   }
    grid = novoGrid;
  }
 }
}

void setup() {
  
  IniciarGrid();
    size(600,600);
  
}

void draw() {
  DesenharGrid();
  atualizandoGrid();  
}
