//creating windows size
void setup() {
  size(1080, 900);
  smooth();
  background(128);
  fill(255);
  rect(0, 0, 900, 900);
  int X = -15;
  int Y = 15;
  //creating cartesian canvas
  for (int y = 0; y <900; y +=30 ) {
    line (0, y, 900, y);
    String yy = str(Y);
    fill(250, 0, 0);
    textSize(15);
    text(yy, 450, y);
    Y-=1;
  }
  for (int x = 0; x <900; x +=30 ) {
    line (x, 0, x, 900);
    String xx = str(X);
    fill(250, 0, 0);
    textSize(15);
    text(xx, x, 450);
    X+=1;
  }
  strokeWeight(3);
  line(0, 450, 900, 450);
  line(450, 0, 450, 900);
}
//end of creating windows
//draw vector
void draw() {
  float x =3 ;
  float y =4 ;
  float X = 450 + (x*30);
  float Y = 450 - (y*30);
  line(450, 450, X, Y);
  
  ////Translasi
  //float x1 = 2;
  //float y1 = 2;
  //translate((x1*30), (-y1*30));
  //line(450, 450, X, Y);
  
  ////skala
  //float S = 0.5 ;
  //scale(S);
  //line(450, 450, X, Y);
  
  
  
  //Resultan
  float x2 =6 ;
  float y2 =5 ;
  float X2 = 450 + (x2*30);
  float Y2 = 450 - (y2*30);
  line(450, 450, X2, Y2);
  float x3 = x+x2;
  float y3 = y+y2;
  float X3 = 450 + (x3*30);
  float Y3 = 450 - (y3*30);
  line(450,450,X3,Y3);
  
  
}
