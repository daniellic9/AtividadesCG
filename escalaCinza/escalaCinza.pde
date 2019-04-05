PImage novo;
PImage novo2;

void setup(){
  size(1000,1000);
  novo = loadImage("outputImage.png");
  novo2 = loadImage("outputImage.png");
}

void draw(){
  loadPixels();

  novo2.loadPixels();
 for (int y = 0; y < novo.height; y++) {
    for (int x=0; x < novo.width; x++) {
      int loc = x + y*novo.width;
      color c = novo.pixels[loc];
      color cinza= color((red(c)+green(c)+blue(c))/3);
      novo2.pixels[loc]=cinza;
   }}
 updatePixels();
    image(novo,0,0);
    image(novo2,500,0);
}
