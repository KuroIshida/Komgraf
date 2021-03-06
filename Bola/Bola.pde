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

   int posisiX=640, posisiY=-108, posisiZ=0;//koordinat asal sinar menuju bidang
  int n=5;//jari jari bola
  int k=1;//digunakan untuk skala
  int x=0, y=0, z=0;//digunakan untuk translasi


  pushMatrix();
  pointLight(51, 102, 126, posisiX, posisiY, posisiZ);//koordinat asal sinar
  fill(255);//warna bola
  stroke(128);
  strokeWeight(0);
  translate(width/2+n*10, height/2-n*10, n*10);//digunakan  untuk memindahkan bola ke tengah kartesian
  //kode dibawah ini digunakan untuk transformasi
  //silahkan comment baris yang tidak anda gunakan, atau set nilai variabel dengan 0
  //untuk scale silahkan di comment apabila tidak dignuakan
  translate(x*20, -y*20, z*20);
  //scale(k);
  sphereDetail(360 / 12);
  sphere(n*10);
  popMatrix();
}
