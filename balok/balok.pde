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

  int x1 =0, y1=0, z1=0;//translasi
  int x=0, y=0, z=0;//rotasi dalam radians
  int w=3, h=4, d=5;//w untuk koordinat x, h untuk koordinat y, d untuk koordinat z
  int k=1;
  int posisiX=640, posisiY=-108, posisiZ=0;//koordinat asal sinar menuju bidang

  pushMatrix();
  pointLight(51, 102, 126, posisiX, posisiY, posisiZ);//koordinat asal sinar
  stroke(128);
  strokeWeight(3);//ketebalan outline
  fill(255);//warna isi balok
  translate(width/2+w*10, height/2-h*10, d*10);//memindahkan balok ke tengah layar
  //kode dibawah ini digunakan untuk transformasi
  //silahkan comment baris yang tidak anda gunakan, atau set nilai variabel dengan 0
  //untuk scale silahkan di comment apabila tidak digunakan
  translate(x1*20, -y1*20, z1*20);
  rotateX(radians(x));
  rotateY(radians(y));
  rotateZ(radians(z));
  //scale(k);
  box(w*20, h*20, d*20);//balok(panjang,tinggi,lebar)
  popMatrix();
}
