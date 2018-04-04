
void setup() {
  size(1080, 900);
  smooth();
  background(128);
  fill(255);
  rect(0, 0, 900, 900);
  int X = -15;
  int Y = 15;
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
void draw() {
  float x = 5 ;
  float y = 3 ;
  float X = 450 + (x*30);
  float Y = 450 - (y*30);

  ////garis
  //line(450, 450, X, Y);


  ////lingkaran
  ////fill(255, 0, 0);
  //noFill();
  //float r = 4;
  //ellipse(X, Y, r*30, r*30);

  //persegi
  noFill();
  float sisi = 4;
  rect(X, Y-(sisi*30), sisi*30, sisi*30);

  ////gars 2
  //float x2 =6 ;
  //float y2 =5 ;
  //float X2 = 450 + (x2*30);
  //float Y2 = 450 - (y2*30);
  //line(450, 450, X2, Y2);


  ////resultan
  //float x3 = x-x2;
  //float y3 = y-y2;
  //float X3 = 450 + (x3*30);
  //float Y3 = 450 - (y3*30);
  //line(450, 450, X3, Y3);



  ////Translasi
  //float x1 = 0;
  //float y1 = 5;
  //translate((x1*30), (-y1*30));
  


  ////skala
  //float S = 0.5 ;
  //fill(0);
  //rect(X, Y-(sisi*S*30), sisi*S*30, sisi*S*30);
  //scale(S);
  
  //pencerminan X
  //float xx = 10;
  float yy = 9 ;
  //float XX = 450 + (xx*30);
  float YY = 450 - (yy*30);
  //float selisi = abs(XX-X);
  float selisi = abs(YY-Y);
  
  //if (XX<X){
  //  rect(X-(selisi*2)-(sisi*30), Y-(sisi*30), sisi*30, sisi*30);
  //}
  //else{
  //  rect(X+(selisi*2)-(sisi*30), Y-(sisi*30), sisi*30, sisi*30);
  //}
  
  if (YY>Y){
    rect(X, Y-(selisi*2)+2*(sisi*30), sisi*30, sisi*30);
  }
  else{
    rect(X, Y-(selisi*2), sisi*30, sisi*30);
  }
  
  
  
  ////shear
  ////shearY(radians(45));
  //shearX(radians(45));
  //rect(X, Y-(sisi*30), sisi*30, sisi*30);
  
  ////rotasi
  //pushMatrix();
  //translate(X, Y-(sisi*30));
  //rotate(radians(45));
  //rect(0, 0, sisi*30, sisi*30);
  //popMatrix();
  
  //rect(X, Y-(sisi*30), sisi*30, sisi*30);

  //line(450, 450, X, Y);
  //line(450, 450, X2, Y2);
//  ellipse(X, Y, r*30, r*30);
  //rect(X, Y-(sisi*30), sisi*30, sisi*30);
  
}
