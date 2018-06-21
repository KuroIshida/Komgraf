/*
Kode sudah dibuat sedemikian simple bagi pembaca
 Untuk keterangan per baris silahkan membaca comment
 */

void setup() {
  size(640, 360, P3D);
  background(0);
}

void draw() {
  background(0);
  stroke(255);
  strokeWeight(1);
  translate(width/2, height/2, 0);
  pushMatrix();
  //begin cartesian
  for (int x = 0; x<2*height; x+=20) {
    line(x, -width, 0, x, width, 0);
    line(-x, -width, 0, -x, width, 0);
  }
  for (int x = 0; x<2*height; x+=20) {
    line(x, 0, 0-width, x, 0, width);
    line(-x, 0, 0-width, -x, 0, width);
  }

  for (int y = 0; y<2*height; y+=20) {
    line(0, y, -width, 0, y, width);
    line(0, -y, -width, 0, -y, width);
  }
  for (int y = 0; y<2*height; y+=20) {
    line(-width, y, 0, width, y, 0);
    line(-width, -y, 0, width, -y, 0);
  }

  for (int z = 0; z<2*height; z+=20) {
    line(-width, 0, z, width, 0, z);
    line(-width, 0, -z, width, 0, -z);
  }
  for (int z = 0; z<2*height; z+=20) {
    line(0, -width, z, 0, width, z);
    line(0, -width, -z, 0, width, -z);
  }
  popMatrix();
  pushMatrix();
  stroke(255, 0, 0);
  strokeWeight(3);
  line(-width, 0, 0, width, 0, 0);
  stroke(255, 255, 0);
  line(0, -width, 0, 0, width, 0);
  stroke(0, 255, 0);
  line(0, 0, -width, 0, 0, width);
  popMatrix();
  //end cartesian
  camera(mouseX*2, mouseY, (height/2)/sin(TWO_PI/8), width/2, height/2, 0, 0, 1, 0);//camera view

  int x1=50, y1=50, z1=50;//x1 untuk panjang, y1 untuk lebar, z1 untuk tinggi
  int x=0, y=0, z=0;//digunakan untuk translasi
  int rX=0, rY=0, rZ=0;//digunakan untuk rotasi
  int k=1;
  int posisiX=0, posisiY=0, posisiZ=0;//koordinat asal sinar menuju bidang

  pushMatrix();
  stroke(128);
  strokeWeight(3);
  pointLight(51, 102, 126, posisiX, posisiY, posisiZ);//koordinat asal sinar
  translate(width/2+(x1*k), height/2-(y1*k), z1*k);//digunakan untuk memindahkan limas ke tengah
  rotateX(PI/2);//memutar limas agar sesuai dengan posisi kamera awal
  //kode dibawah ini digunakan untuk transformasi
  //silahkan comment baris yang tidak anda gunakan, atau set nilai variabel dengan 0
  translate(x*20, z*20, y*20);//perpindahan limas
  rotateX(radians(rX));
  rotateY(radians(rY));
  rotateZ(radians(rZ));
  scale(k);

  //draw pyramid
  beginShape(TRIANGLES);
  vertex(-x1, -y1, -z1);//alas kiri atas
  vertex( x1, -y1, -z1);//alas kanan atas
  vertex(   0, 0, z1);//garis tegak kanan atas

  vertex( x1, -y1, -z1);//alas kanan atas
  vertex( x1, y1, -z1);//alas kanan bawah
  vertex(   0, 0, z1);//garis tegak kanan bawah

  vertex( x1, y1, -z1);//alas kanan bawah
  vertex(-x1, y1, -z1);//alas kiri bawah
  vertex(   0, 0, z1);//garis tegak kiri bawah

  vertex(-x1, y1, -z1);//alas kiri bawah
  vertex(-x1, -y1, -z1);//alas kri atas
  vertex(   0, 0, z1);//garis tegak kiri atas

  vertex(-x1, -y1, -z1);//alas kiri atas
  vertex(x1, -y1, -z1);//alas kanan atas
  vertex( x1, y1, -z1);//alas kanan bawah

  vertex( x1, y1, -z1);//alas kanan bawah
  vertex(-x1, y1, -z1);//alas kiri bawah
  vertex(-x1, -y1, -z1);//alas kiri atas
  //note : x & y mempengaruhi alas,z mempengaruhi tinggi
  endShape();
  //end drawing pyramid
  popMatrix();
}
