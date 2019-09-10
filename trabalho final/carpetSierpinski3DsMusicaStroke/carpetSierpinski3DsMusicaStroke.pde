//Final  3d falta musica

long lastTime = 0;
int n=2;
float newTam = 513;
float xcentro = 0;
float ycentro = 0;
void setup(){

  size(513,513,P3D);
  background(0);
  lastTime = millis();
  n=2;

}
void draw(){
directionalLight(126, 126, 126, 0, 0, -1);
ambientLight(102, 102, 102);
  if(newTam<5){
    newTam =513;
    background(0);
    fill(random(255), random(255), random(255));
    noStroke();
    n=1;
  }
  newTam=newTam/3;
  for(int i = 0; i < n; i++){
    ycentro = i * newTam*3;
    for(int j=0;j<n;j++){
      xcentro =j * newTam*3;
      pushMatrix();
      translate(xcentro+(1.5)*newTam,ycentro+1.5*newTam);
      rotateY(PI* (float)(mouseX)/(360));
        box(newTam);
      popMatrix();
    }
    
  }
  n*=3;
  while(millis()-lastTime<500);
  lastTime = millis();
}
