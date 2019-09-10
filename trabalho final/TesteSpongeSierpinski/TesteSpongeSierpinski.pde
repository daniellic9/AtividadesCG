void setup(){
size(700,700,P3D);

}
void draw(){
background(255);

directionalLight(126, 126, 126, 0, 0, -1);
ambientLight(102, 102, 102);
rotateX(PI* (float)(mouseX)/(360));
rotateY(PI* (float)(mouseX)/(360));
translate(300,400);
box(513);
tapete(513,-250,-250,-250);



}

void tapete(float tam, float x, float y, float z){



float newTam=tam/3;
if(newTam>4.725){

    for (int i = 0; i < 9; i++) {
            if (i == 4) {
                translate(x+newTam,y+newTam,-513);
                //noFill();
                box(newTam);
                translate(-x-newTam,-y-newTam,513);
            } else {
                tapete(newTam, x + (i % 3) * newTam, y + (i / 3) * newTam, z );
            }
      }
    

}

}
