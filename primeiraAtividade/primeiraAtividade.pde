//Aluna Danielli dos Reis Costa

void setup(){
size(500,500);
}

void draw(){
  boolean fechado=false;
  fill(233,150,122);
  triangle(355,20,250,50,460,50);//telhado
  
  fill(0,128,128);
  rect(250,50,210,500);//predio
  
  fill(0,0,0);
 
  rect(280,70,50,50);//janela direita
  
  rect(380,70,50,50);//janela esquerda
  
  for(int i=1; i<5; i=i+1){
    if(i==4)fechado=true;
    fill(255,255,224);
    rect(280,70+i*70,50,50);//janela direita
    if(fechado==true){fill(0,0,0);}
    rect(380,70+i*70,50,50);//janela esquerda
  }
  
  fill(176,196,222);
  rect(275,430,80,100);//porta1
  rect(355,430,80,100);//porta2
  
  fill(138,43,226);
  ellipse(350,470,10,10);//maçaneta1
  ellipse(360,470,10,10);//maçaneta2
  
  fill(160,82,45);
  rect(60,380,80,200);//tronco da arvore
  
  fill(0,255,127);
  ellipse(100,350,200,100);//folha da arvore
  
  saveFrame("outputImage.png");
}
