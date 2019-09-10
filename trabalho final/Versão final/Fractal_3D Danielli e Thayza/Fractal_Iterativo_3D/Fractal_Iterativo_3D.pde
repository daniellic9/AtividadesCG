import ddf.minim.*;
import ddf.minim.analysis.*;

BeatDetect beat;
BeatListener bl;

// Objetos necessários para trabalhar com som
Minim minim;
AudioPlayer inicio;
AudioPlayer fim;

long lastTime = 0;
int n=1;

float newTam = 513;
float xcentro = 0;
float ycentro = 0;

//construtor do BeatListener para ser usado
class BeatListener implements AudioListener
{
  private BeatDetect beat;
  private AudioPlayer source;
  
  BeatListener(BeatDetect beat, AudioPlayer source)
  {
    this.source = source;
    this.source.addListener(this);
    this.beat = beat;
  }
  
  void samples(float[] samps)
  {
    beat.detect(source.mix);
  }
  
  void samples(float[] sampsL, float[] sampsR)
  {
    beat.detect(source.mix);
  }
}

void setup(){

  size(513,513,P3D);
  background(0);
  lastTime = millis();
  n=0;
  
  //parte sonora
  minim = new Minim(this); // Instancia o objeto
  inicio = minim.loadFile("inicio.mp3"); // Carrega o som do inicio que está dentro da pasta 'data'
  fim = minim.loadFile("Vitas.mp3"); 
  
  inicio.play();
  inicio.loop();
  
  beat = new BeatDetect(inicio.bufferSize(), inicio.sampleRate());
  beat.setSensitivity(300);
  bl = new BeatListener(beat, inicio); 

}
void draw(){
  
  if(newTam<5){
    newTam =513;
    background(0);
    fill(random(255), random(255), random(255));
    stroke(255);
    n=1;
  }
  newTam=newTam/3;
  
  inicio.close();
  fim = minim.loadFile("Vitas.mp3");
  fim.play();
  fim.loop();
  
  for(int i = 0; i < n; i++){
    ycentro = i * newTam*3;
    for(int j=0;j<n;j++){
      xcentro =j * newTam*3;
      pushMatrix();
      translate(xcentro+(1.5)*newTam,ycentro+1.5*newTam,0);
      rotateY(PI* (float)(mouseX)/(360));

      box(newTam);
      popMatrix();
    }
    
  }
  n*=3;
  while(millis()-lastTime<500);
  lastTime = millis();
}
