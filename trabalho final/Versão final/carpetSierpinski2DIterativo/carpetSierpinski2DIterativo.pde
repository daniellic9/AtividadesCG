long lastTime = 0;
int n=1;
float newTam = 513;
float xcentro = 0;
float ycentro = 0;
void setup(){

  size(513,513,P2D);
  background(255,69,0);
  lastTime = millis();
  n=0;

}
void draw(){
  //fill(0);
  xcentro = 0;
  ycentro = 0;
  //System.out.println(newTam);
  if(newTam<5){
    newTam =513;
    background(255,69,0);
    fill(255,255,0);
    noStroke();
    n=1;
  }
  newTam=newTam/3;
  for(int i = 0; i < n; i++){
    ycentro = i * newTam*3;
    for(int j=0;j<n;j++){
      xcentro =j * newTam*3;
      rect(xcentro+newTam,ycentro+newTam,newTam,newTam);
    }
    
  }
  n*=3;
  while(millis()-lastTime<500);
  lastTime = millis();
}
