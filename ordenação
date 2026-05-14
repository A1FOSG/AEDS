int n = 20;
int i = -1, j = -1, minIdx = -1;
int h = 1;
int array[] = new int[n];


void setup() {
 size(600,600);
 for(int k  = 0; k < array.length; k++) array[k] = (int) random(height);
   thread("ordenar");
 }



void ordenar() {   
  while(true) ShellSort(array);    
}

void ShellSort(int[] ary) {
 while (h < n/3) {
   h = h * 3 + 1;
 }
   while(h >= 1) {
     for (i = h; i <= n-1; i++) {
      int temporario = ary[i];
       j = i;
       while (j >= h && ary[j - h] > temporario) {
         delay(100);
         ary[j] = ary[j - h];
         j = j - h;
       }
       delay(100);
       ary[j] = temporario;
      }
     h = h/3;
   }
  }




void draw() {
 background(#640B0B);
 int l = width / n;
 for(int k = 0; k < n; k++) {
   int a = int(array[k]);
   if(k == i || k == minIdx) {
     fill(100,250,100);
   }else {
     fill(100,100,250);
   }
   rect(k*l,height - a, l, a);
   fill(0);
   textAlign(CENTER);
   text(str(n), n * l, height - a - 10, l, a);
 }
}
