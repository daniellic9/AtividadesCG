void setup(){
size(513,513,P2D);
background(255);
}
void draw(){



fill(0);
rect(0,0,513,513);
tapete(513,0,0);

}

void tapete(float tam, float xcentro, float ycentro){

fill(255);

float newTam=tam/3;
if(newTam>4.725){
  for (int i = 0; i < 9; i++) {
            if (i == 4) {
                rect(xcentro+newTam,ycentro+newTam,newTam,newTam);
            } else {
                tapete(newTam, xcentro + (i % 3) * newTam, ycentro + (i / 3) * newTam);
            }
        }


}

}
