void setup(){
size(500,500,P2D);
background(0);
}
void draw(){


rectMode(CENTER);
fill(255);
rect(250,250,500,500);
tapete(500,250,250);
}

void tapete(int tam, int xcentro, int ycentro){
rectMode(CENTER);
//fill(iteracoes*100);
noFill();
int newTam=tam/3;
if(newTam>5){
  rect(xcentro,ycentro,newTam,newTam);

  tapete(newTam,xcentro/3,ycentro/3);
  tapete(newTam,xcentro,ycentro/3);
  tapete(newTam,xcentro+xcentro*2/3,ycentro/3);
  tapete(newTam,xcentro/3,ycentro);
  tapete(newTam,xcentro+xcentro*2/3,ycentro);
  tapete(newTam,xcentro/3,ycentro+ycentro*2/3);
  tapete(newTam,xcentro,ycentro+ycentro*2/3);
  tapete(newTam,xcentro+xcentro*2/3,ycentro+ycentro*2/3);
  
}

}
