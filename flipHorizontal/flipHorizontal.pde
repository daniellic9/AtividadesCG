//Flip horizontal pixel a pixel de uma imagem.
PImage novo;
PImage novo2;

void setup(){
  size(1000,500);
  novo = loadImage("outputImage.png");//imagem original
  novo2 = loadImage("outputImage.png");//imagem que sera invertida
}

void draw(){
  loadPixels();
  novo.loadPixels();
  novo2.loadPixels();
 for (int y = 0,i=0; y < novo.height; y++,i++) {
    for (int x=0,j=novo.width-1; x < novo.width; x++,j--) {
      int loc = x + y*novo.width;
      int loc2=j+i*novo.width;
     novo2.pixels[loc2]=novo.pixels[loc];
   }}
 updatePixels();
    image(novo,0,0);
    image(novo2,500,0);
}
