import ddf.minim.*;
import ddf.minim.analysis.*;

BeatDetect beat;
BeatListener bl;

// Objetos necessários para trabalhar com som
Minim minim;
AudioPlayer inicio;

//construtor do BeatListener para ser usado
class BeatListener implements AudioListener {
  private BeatDetect beat;
  private AudioPlayer source;
  
  BeatListener(BeatDetect beat, AudioPlayer source) {
    this.source = source;
    this.source.addListener(this);
    this.beat = beat;
  }
  
  void samples(float[] samps) {
    beat.detect(source.mix);
  }
  
  void samples(float[] sampsL, float[] sampsR) {
    beat.detect(source.mix);
  }
}

void setup(){
  size(513,513,P3D);
  background(0);
  
  //parte sonora
  minim = new Minim(this); // Instancia o objeto
  inicio = minim.loadFile("inicio.mp3"); // Carrega o som que está dentro da pasta 'data'
  
  inicio.play();
  inicio.loop();
  
  beat = new BeatDetect(inicio.bufferSize(), inicio.sampleRate());
  beat.setSensitivity(300);
  bl = new BeatListener(beat, inicio); 
}

void draw(){
  background(0);
  directionalLight(126, 126, 126, 0, 0, -1);
  ambientLight(102, 102, 102);
  
  tapete(513,0,0);
  
  noStroke();
}

void tapete(float tam, float xcentro, float ycentro){
  float noiseVal1 = noise((mouseX)*0.02,mouseY*0.2);
  float noiseVal2 = noise((mouseY)*0.02,mouseX*0.2);
  float noiseVal3 = noise((mouseX)*0.02,mouseX*0.2);
  fill(random(255), random(255), random(255));
  
  float newTam=tam/3;
  
  if(newTam>4.725){
    for (int i = 0; i < 9; i++) {
      if (i == 4) {
        pushMatrix();
        
        translate(xcentro+(1.5)*newTam,ycentro+1.5*newTam,0);
        rotateY(PI* (float)(mouseX)/(360));
        
        box(newTam);
        popMatrix();
      } 
      else {
        tapete(newTam, xcentro + (i % 3) * newTam, ycentro + (i / 3) * newTam);
      }
    }
  }
}
