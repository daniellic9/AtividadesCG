void setup(){
size(500,500);
}

void draw(){
  fill(0,150,100);
  ellipse(50,50,60,80);
  fill(0,150,100);
  rect(200,400,100,50);
  fill(0,150,100);
  stroke(204,0, 0);
  polygon(mouseX, mouseY, 70, 7);
}

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
