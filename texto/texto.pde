//head
int[] jugador1=new int[4];
int[] jugador2=new int[4];
int[] p1=new int[4];
int[] p2=new int[4];
int[] p3=new int[4];
int[] p4=new int[4];
int[] p5=new int[4];
int[] p6=new int[4];
int s=0;
int seleccion=0;
float x=200;
float y=240;
float z=600;
float w=620;
int posX=mouseX;
int posY=mouseY;

class Juego {
int x;
int y;
int lb;
int ld;
int l;

  void display(){
  fill (0);
  
  switch(s){
  case 0:
       background(255,255,0);
       textSize(40);
       text("Super Showdown Bowl",200,100);
       text("Instrucciones",50,600);
       text("Inicio",550,600);
       
      break;
  case 1:
      background(0,0,255);
      text("Pantalla de Instrucciones",200,100);
      text("Regresar",50,600);
      
      break;
  case 2:
      background(255,255,0);
      text("Elegir personajes",20,700);
       
    pushMatrix();
    translate(20, 20);   
    Rick();  
    popMatrix();
    
    pushMatrix();
    translate(250, 20);
    Donkey();
    popMatrix();
    
    pushMatrix();
    translate(600, 20);
    Clone();
    popMatrix();

    pushMatrix();
    translate(100, 500);
    Voltorb();
    popMatrix();

    pushMatrix();
    translate(500, 500);
    Perro();
    popMatrix();

      break;
  case 3:
      background(255,204,4);
      text("Combate",20,40);
  p1[0]=50;
  p1[1]=40;
  p1[2]=320;
  p1[3]=0;

  p2[0]=40;
  p2[1]=40;
  p2[2]=190;
  p2[3]=0;

  p3[0]=50;
  p3[1]=30;
  p3[2]=200;
  p3[3]=0;

  p4[0]=40;
  p4[1]=36;
  p4[2]=180;
  p4[3]=0;
  
  p5[0]=25;
  p5[1]=20;
  p5[2]=300;
  p5[3]=0;
  
       pushMatrix();
     textSize(35);
     text("Fight", 350, 80);
      popMatrix();
    
    pushMatrix();
    fill(255,0,0);
    rect(100,100,jugador1[2],30);
    popMatrix();
    
    pushMatrix();
    fill(255,0,0);
    rect(500,100,jugador2[2],30);
    popMatrix();
    
    pushMatrix();
    translate(100, 150);
    if (jugador1==p1)
    {
      Rick();
    } else if (jugador1==p2)
    {
      Donkey();
    } else if (jugador1==p3)
    {
      Clone();
    } else if (jugador1==p4)
    {
      Voltorb();
    } else if (jugador1==p5)
    {
      Perro();
    }
    popMatrix();

    pushMatrix();
    translate(500, 150);
    if (jugador2==p1)
    {
      Rick();
    } else if (jugador1==p2)
    {
      Donkey();
    } else if (jugador1==p3)
    {
      Clone();
    } else if (jugador1==p4)
    {
      Voltorb();
    } else if (jugador1==p5)
    {
      Perro();
    }
    popMatrix();
      break;
  case 4:
      background(0);
      fill(255);
      text("Ganador",200,100);
      break;
  }
  
  }
   void funcion(){
    switch(s){
      case 0:
       if (mouseX<width/2){  
        s=1;
   }
      else {
        s=2;
      }
     
      break;
      case 1:
        if (mouseX<width/2){  
         s=0;
        }
      break;
      case 2:
   
    if (mouseX>0&&mouseX<300&&mouseY>0&&mouseY<400)
    {
      if (seleccion==0)
      {
        jugador1=p1;
        seleccion=1;
      } else if (seleccion==1)
      {
        jugador2=p1;
        s=3;
      }
    }

   
    if (mouseX>300&&mouseX<600&&mouseY>0&&mouseY<400)
    {
      if (seleccion==0)
      {
        jugador1=p2;
        seleccion=1;
      } else if (seleccion==1)
      {
        jugador2=p2;
        s=3;
      }
    }

   
    if (mouseX>600&&mouseX<1000&&mouseY>0&&mouseY<400)
    {
      if (seleccion==0)
      {
        jugador1=p3;
        seleccion=1;
      } else if (seleccion==1)
      {
        jugador2=p3;
        s=3;
      }
    }

  
    if (mouseX>0&&mouseX<300&&mouseY>400&&mouseY<800)
    {
      if (seleccion==0)
      {
        jugador1=p4;
        seleccion=1;
      } else if (seleccion==1)
      {
        jugador2=p4;
        s=3;
      }
    }

    
    if (mouseX>300&&mouseX<600&&mouseY>400&&mouseY<800)
    {
      if (seleccion==0)
      {
        jugador1=p5;
        seleccion=1;
      } else if (seleccion==1)
      {
        jugador2=p5;
        s=3;
      }
    }
      break;
      case 3:
        s=4;
      break;      
      case 4:
      seleccion=0;
        s=0;
      break;  
    }
   }
   void  Rick()
{
  x=0;
  y=0;
  lb=5;
  l=5;
  
  fill(255);
  text("Rick",20,220);
  fill (90, 179, 224);
  noStroke ();
  rect (x, y+l*5, lb, l);
  rect (x+lb, y+l*4, lb, l*2);
  rect (x+lb, y+l*8, lb, l);
  rect (x+lb*2, y+l*7, lb, l*3);
  rect (x+lb*2, y+l*3, lb, l*3);
  rect (x+lb*3, y, lb, l*10);
  rect (x+lb*4, y+l, lb, l*3);
  rect (x+lb*5, y+l*2, lb, l*2);
  rect (x+lb*6, y+l*3, lb, l);
  rect (x+lb*7, y+l*2, lb, l*2);
  rect (x+lb*8, y+l, lb, l*3);
  rect (x+lb*9, y, lb, l*4);
  rect (x+lb*10, y+l*2, lb, l*6);
  rect (x+lb*11, y+l*5, lb, l*2);
  rect (x+lb*12, y+l*5, lb, l);
  rect (x+lb*5, y+l*5, lb*5, l);
  
  //pistola
  fill (200);
  noStroke ();
  rect (x+lb*15, y+l*18, lb, l*3);
  rect (x+lb*16, y+l*18, lb*3, l);
  
  fill (0,255,50);
  noStroke ();
  rect (x+lb*16, y+l*17, lb, l);
  
  //piel
  fill (221, 188, 161);
  noStroke ();
  rect (x+lb*5, y+l*4, lb*5, l);
  rect (x+lb*4, y+l*4, lb, l*7);
  rect (x+lb*5, y+l*6, lb*5, l*6);
  rect (x+lb*5, y+l*11, lb*5, l);
  rect (x+lb*6, y+l*12, lb*2, l);
  rect (x+lb*3, y+l*25, lb, l);
  rect (x+lb*15, y+l*19, lb, l);
  
  //ojos
  fill (0);
  noStroke ();
  rect (x+lb*6, y+l*7, lb, l);
  rect (x+lb*9, y+l*7, lb, l);
  
  //zapatos
  rect (x+lb*4, y+l*35, lb*3, l);
  rect (x+lb*9, y+l*35, lb*3, l);
  
  //bata
  fill (230);
  noStroke ();
  rect (x+lb*3, y+l*15, lb, l*10);
  rect (x+lb*4, y+l*13, lb, l*10);
  rect (x+lb*9, y+l*13, lb, l*10);
  rect (x+lb*10, y+l*15, lb, l*5);
  rect (x+lb*11, y+l*19, lb*4, l);
  rect (x+lb*5, y+l*25, lb*4, l*3);
  
  //calcetas
  rect (x+lb*4, y+l*34, lb, l);
  rect (x+lb*9, y+l*34, lb, l);
  
  fill (200);
  noStroke ();
  rect (x+lb*5, y+l*13, lb, l*10);
  rect (x+lb*8, y+l*13, lb, l*10);
  
  
  fill (99, 206, 198);
  noStroke ();
  rect (x+lb*6, y+l*13, lb*2, l*10);
  
  //pantalon
  fill (82, 52, 25);
  noStroke ();
  rect (x+lb*4, y+l*23, lb, l*11);
  rect (x+lb*5, y+l*24, lb*4, l);
  rect (x+lb*9, y+l*23, lb, l*11);
  
  fill (52, 35, 18);
  noStroke ();
  rect (x+lb*5, y+l*23, lb*4, l);
  
  
  fill (206, 179, 66);
  noStroke ();
  rect (x+lb*6, y+l*23, lb*2, l);
}

void Donkey()
{
  fill(255);
  text("DK",100,200);
 x = 0;
 y = 0;
 ld = 5;
 l=5;
  
  //color cafe mano
  fill (234, 180, 115);
  noStroke ();
  rect (x+ld*6, y, ld*4, l*6);
  rect (x+ld*4, y+l, ld*2, l*5);
  rect (x+ld*2, y+l*2, ld*2, l*3);
  rect (x+ld*10, y+l, ld, l*4);
  rect (x+ld*11, y+l*2, ld, l);
  
  //color cafe cabeza
  rect (x+ld*14, y+l*5, ld, l*2);
  rect (x+ld*33, y+l*5, ld, l*2);
  rect (x+ld*15, y+l*4, ld*2, l*3);
  rect (x+ld*31, y+l*4, ld*2, l*3);
  rect (x+ld*16, y+l*7, ld*16, l*5);
  rect (x+ld*15, y+l*8, ld, l*3);
  rect (x+ld*32, y+l*8, ld, l*3);
  rect (x+ld*17, y+l*12, ld*14, l);
  rect (x+ld*19, y+l*13, ld*9, l);
  rect (x+ld*19, y+l*3, ld*4, l*4);
  rect (x+ld*24, y+l*3, ld*4, l*4);
  rect (x+ld*18, y+l*4, ld, l);
  rect (x+ld*28, y+l*4, ld, l);
  rect (x+ld*20, y+l*2, ld*2, l);
  rect (x+ld*25, y+l*2, ld*2, l);
  rect (x+ld*23, y+l*4, ld, l*3);
  
  //pecho
  rect (x+ld*17, y+l*16, ld*14, l*9);
  rect (x+ld*28, y+l*15, ld*3, l);
  
  //pies
  rect (x+ld*6, y+l*29, ld*11, l);
  rect (x+ld*5, y+l*30, ld*12, l);
  rect (x+ld*4, y+l*31, ld*12, l);
  
  rect (x+ld*43, y+l*27, ld*3, l);
  rect (x+ld*40, y+l*28, ld*7, l);
  rect (x+ld*36, y+l*29, ld*11, l);
  
  //color blanco
  fill (255);
  noStroke ();
  rect (x+ld*21, y+l*4, ld*2, l*2);
  rect (x+ld*24, y+l*4, ld*2, l*2);
  rect (x+ld*16, y+l*9, ld, l);
  rect (x+ld*17, y+l*8, ld*2, l*4);
  rect (x+ld*20, y+l*9, ld*3, l*4);
  rect (x+ld*24, y+l*9, ld*3, l*4);
  rect (x+ld*28, y+l*8, ld*2, l*4);
  rect (x+ld*30, y+l*9, ld, l);
  
  //naranja de atras
  fill (219, 92, 5);
  noStroke ();
  rect (x+ld*4, y+l*6, ld*3, l*4);
  rect (x+ld*14, y+l*16, ld*3, l*6);
  rect (x+ld*18, y+l*25, ld*12, l);
  rect (x+ld*32, y+l*12, ld*6, l*4);
  
  //color rojo cabeza
  fill (170, 9, 9);
  noStroke ();
  rect (x+ld*20, y, ld*7, l*2);
  rect (x+ld*19, y+l, ld, l*2);
  rect (x+ld*27, y+l, ld, l*2);
  rect (x+ld*18, y+l*2, ld, l*2);
  rect (x+ld*28, y+l*2, ld, l*2);
  rect (x+ld*17, y+l*3, ld, l*2);
  rect (x+ld*29, y+l*3, ld, l*2);
  rect (x+ld*17, y+l*5, ld*2, l*2);
  rect (x+ld*28, y+l*5, ld*2, l*2);
  rect (x+ld*30, y+l*4, ld, l*3);
  rect (x+ld*22, y+l*2, ld*3, l);
  rect (x+ld*23, y+l*3, ld, l);
  
  //ojos, nariz
  rect (x+ld*22, y+l*5, ld, l);
  rect (x+ld*24, y+l*5, ld, l);
  rect (x+ld*22, y+l*7, ld*3, l);
  
  //dientes
  rect (x+ld*16, y+l*10, ld, l);
  rect (x+ld*30, y+l*10, ld, l);
  rect (x+ld*19, y+l*9, ld, l*3);
  rect (x+ld*23, y+l*9, ld, l*3);
  rect (x+ld*27, y+l*9, ld, l*3);
  rect (x+ld*18, y+l*10, ld*3, l);
  rect (x+ld*22, y+l*10, ld*3, l);
  rect (x+ld*26, y+l*10, ld*3, l);
  
  //cuerpo
  rect (x+ld, y+l*4, ld, l*2);
  rect (x+ld*2, y+l*5, ld, l);
  rect (x, y+l*7, ld, l*3);
  rect (x+ld, y+l*9, ld, l*2);
  rect (x+ld, y+l*6, ld*4, l*3);
  rect (x+ld*2, y+l*9, ld*2, l*3);
  rect (x+ld*4, y+l*10, ld*3, l*3);
  rect (x+ld*5, y+l*9, ld*2, l);
  rect (x+ld*6, y+l*8, ld, l);
  rect (x+ld*5, y+l*13, ld*2, l);
  rect (x+ld*7, y+l*7, ld*8, l*8);
  rect (x+ld*9, y+l*15, ld*2, l);
  rect (x+ld*10, y+l*16, ld, l);
  rect (x+ld*11, y+l*15, ld*3, l*5);
  rect (x+ld*14, y+l*15, ld, l*2);
  rect (x+ld*14, y+l*18, ld, l*2);
  rect (x+ld*12, y+l*20, ld*2, l);
  rect (x+ld*11, y+l*21, ld*4, l);
  rect (x+ld*10, y+l*22, ld*8, l*7);
  rect (x+ld*9, y+l*23, ld, l);
  rect (x+ld*8, y+l*24, ld*2, l*5);
  rect (x+ld*7, y+l*29, ld, l);
  rect (x+ld*10, y+l*29, ld*3, l);
  rect (x+ld*15, y+l*29, ld, l);
  rect (x+ld*9, y+l*30, ld, l);
  rect (x+ld*14, y+l*30, ld, l);
  rect (x+ld*13, y+l*6, ld, l);
  rect (x+ld*15, y+l*7, ld, l);
  rect (x+ld*15, y+l*11, ld, l*2);
  rect (x+ld*16, y+l*12, ld, l);
  rect (x+ld*15, y+l*13, ld*4, l*3); //este
  rect (x+ld*15, y+l*17, ld, l);
  rect (x+ld*16, y+l*16, ld, l*2);
  rect (x+ld*15, y+l*20, ld, l);
  rect (x+ld*16, y+l*21, ld, l);
  rect (x+ld*19, y+l*14, ld*9, l*2);
  rect (x+ld*23, y+l*16, ld*2, l);
  rect (x+ld*19, y+l*19, ld, l);
  rect (x+ld*18, y+l*24, ld, l);
  rect (x+ld*18, y+l*26, ld, l*2);
  rect (x+ld*19, y+l*25, ld, l*2);
  rect (x+ld*20, y+l*25, ld, l);
  rect (x+ld*22, y+l*24, ld, l*2);
  rect (x+ld*23, y+l*25, ld, l);
  rect (x+ld*25, y+l*25, ld, l);
  rect (x+ld*27, y+l*25, ld*2, l);
  rect (x+ld*29, y+l*24, ld, l);
  rect (x+ld*35, y+l*27, ld*8, l);
  rect (x+ld*36, y+l*28, ld*4, l);
  rect (x+ld*43, y+l*28, ld, l);
  rect (x+ld*43, y+l*26, ld, l);
  rect (x+ld*42, y+l*24, ld, l*3);
  rect (x+ld*30, y+l*22, ld*12, l*5);
  rect (x+ld*31, y+l*21, ld*9, l);
  rect (x+ld*33, y+l*20, ld*2, l);
  rect (x+ld*30, y+l*17, ld*7, l*3);
  rect (x+ld*28, y+l*17, ld, l);
  rect (x+ld*28, y+l*19, ld, l);
  rect (x+ld*29, y+l*18, ld, l);
  rect (x+ld*28, y+l*13, ld*5, l*2);
  rect (x+ld*31, y+l*15, ld, l*2);
  rect (x+ld*31, y+l*12, ld, l);
  rect (x+ld*32, y+l*11, ld, l*2);
  rect (x+ld*33, y+l*8, ld*3, l*5);
  rect (x+ld*32, y+l*7, ld*3, l);
  rect (x+ld*36, y+l*9, ld*2, l*3);
  rect (x+ld*38, y+l*10, ld, l);
  rect (x+ld*38, y+l*11, ld*3, l*7);
  rect (x+ld*41, y+l*12, ld*2, l*4);
  rect (x+ld*41, y+l*16, ld, l);
  rect (x+ld*37, y+l*18, ld*3, l);
  rect (x+ld*37, y+l*13, ld, l*5);
  rect (x+ld*36, y+l*14, ld, l*3);
  rect (x+ld*35, y+l*15, ld, l);
  rect (x+ld*32, y+l*16, ld*4, l);
  rect (x+ld*33, y+l*13, ld*2, l);
  rect (x+ld*36, y+l*12, ld, l);
  
  //naranja de enfrente
  fill (219, 92, 5);
  noStroke ();
  rect (x+ld*3, y+l*4, ld, l*2);
  rect (x+ld*4, y+l*5, ld, l);
  rect (x+ld*5, y+l*2, ld, l);
  rect (x+ld*6, y+l*3, ld, l);
  rect (x+ld*7, y+l*4, ld, l);
  rect (x+ld*8, y+l, ld, l);
  rect (x+ld*9, y+l*2, ld, l);
  rect (x+ld*8, y+l*3, ld*3, l);
  rect (x+ld*11, y+l*20, ld, l);
  rect (x+ld*10, y+l*21, ld, l);
  rect (x+ld*9, y+l*22, ld, l);
  rect (x+ld*8, y+l*23, ld, l);
  rect (x+ld*7, y+l*24, ld, l*3);
  rect (x+ld*6, y+l*30, ld, l);
  rect (x+ld*5, y+l*31, ld, l);
  rect (x+ld*17, y+l*17, ld, l);
  rect (x+ld*18, y+l*16, ld, l);
  rect (x+ld*20, y+l*16, ld, l);
  rect (x+ld*22, y+l*16, ld, l);
  rect (x+ld*25, y+l*16, ld, l);
  rect (x+ld*23, y+l*17, ld*2, l*3);
  rect (x+ld*22, y+l*20, ld, l);
  rect (x+ld*25, y+l*20, ld, l);
  rect (x+ld*17, y+l*21, ld*5, l);
  rect (x+ld*26, y+l*21, ld*5, l);
  rect (x+ld*18, y+l*22, ld, l*2);
  rect (x+ld*20, y+l*23, ld, l);
  rect (x+ld*22, y+l*23, ld, l);
  rect (x+ld*29, y+l*22, ld, l*2);
  rect (x+ld*25, y+l*23, ld, l);
  rect (x+ld*19, y+l*24, ld, l);
  rect (x+ld*21, y+l*24, ld, l);
  rect (x+ld*24, y+l*24, ld, l);
  rect (x+ld*26, y+l*24, ld, l);
  rect (x+ld*28, y+l*24, ld, l);
  rect (x+ld*27, y+l*23, ld, l);
  rect (x+ld*32, y+l*23, ld, l);
  rect (x+ld*31, y+l*20, ld*2, l);
  rect (x+ld*35, y+l*20, ld*4, l);
  rect (x+ld*39, y+l*21, ld*2, l);
  rect (x+ld*41, y+l*22, ld, l*2);
  rect (x+ld*35, y+l*7, ld, l);
  rect (x+ld*36, y+l*8, ld*2, l);
  rect (x+ld*38, y+l*9, ld, l);
  rect (x+ld*39, y+l*10, ld*2, l);
  rect (x+ld*41, y+l*11, ld, l);
  
 // ld *=-1

}

void Clone() 
{
  fill(255);
  text("Stormtrooper",-20,200);
  x = 0;
  y = 0;
  lb= 5;
  l= 5;
  // blanco fondo
  fill (255);
  noStroke ();
  rect (x+l*7, y+l, lb*7, l*2);
  rect (x+l*6, y+l*3, lb*9, l*19);
  rect (x+l*2, y+l*13, lb*4, l*6);
  rect (x+l, y+l*23, lb*7, l*2);
  rect (x+l*4, y+l*21, lb*5, l*2);
  rect (x+l*6, y+l*3, lb*9, l*19);
  rect (x+l*13, y+l*23, lb*7, l*2);
  rect (x+l*11, y+l*21, lb*6, l*2);
  rect (x+l*5, y+l*8, lb, l*2);
  rect (x+l*15, y+l*9, lb, l*2);//aqui termina
  rect (x+l*4, y+l*12, lb*13, l*2);
  rect (x+l*15, y+l*13, lb*3, l*6);
  
  
  
  //negro
  fill (0);
  noStroke ();
  rect (x+l, y+l*14, lb, l*5);
  rect (x+l*2, y+l*13, lb, l);
  rect (x+l*3, y+l*12, lb, l);
  rect (x+l*4, y+l*11, lb*4, l);
  rect (x+l*5, y+l*10, lb, l);
  rect (x+l*4, y+l*8, lb, l*2);
  rect (x+l*5, y+l*3, lb, l*5);
  rect (x+l*6, y+l*2, lb, l);
  rect (x+l*7, y+l, lb*2, l);
  rect (x+l*9, y, lb*3, l);
  rect (x+l*12, y+l, lb*2, l);
  rect (x+l*14, y+l*2, lb, l);
  rect (x+l*14, y+l*2, lb, l);
  rect (x+l*15, y+l*3, lb, l*6);
  rect (x+l*16, y+l*9, lb, l*2);
  rect (x+l*15, y+l*11, lb, l);
  rect (x+l*14, y+l*12, lb, l);
  rect (x+l*13, y+l*13, lb, l);
  rect (x+l*12, y+l*12, lb, l);
  rect (x+l*10, y+l*13, lb*2, l);
  rect (x+l*8, y+l*12, lb*2, l);
  rect (x+l*6, y+l*5, lb*9, l);
  rect (x+l*14, y+l*14, lb, l*6);
  rect (x+l*2, y+l*19, lb*3, l);
  rect (x+l*5, y+l*15, lb, l*4);
  rect (x+l*6, y+l*14, lb, l*6);
  rect (x+l*5, y+l*20, lb, l);
  rect (x+l*4, y+l*21, lb, l);
  rect (x+l*3, y+l*22, lb, l);
  rect (x+l, y+l*23, lb*2, l);
  rect (x, y+l*24, lb, l);
  rect (x, y+l*25, lb*9, l);
  rect (x+l*8, y+l*23, lb, l*2);
  rect (x+l*9, y+l*22, lb, l);
  rect (x+l*10, y+l*21, lb, l);
  rect (x+l*11, y+l*22, lb, l);
  rect (x+l*12, y+l*23, lb, l*2);
  rect (x+l*12, y+l*25, lb*9, l);
  rect (x+l*20, y+l*24, lb, l);
  rect (x+l*18, y+l*23, lb*2, l);
  rect (x+l*17, y+l*22, lb, l);
  rect (x+l*16, y+l*21, lb, l);
  rect (x+l*15, y+l*20, lb, l);
  rect (x+l*15, y+l*19, lb*3, l);
  rect (x+l*18, y+l*14, lb, l*5);
  rect (x+l*17, y+l*13, lb, l);
  rect (x+l*16, y+l*12, lb, l);
  
  //gris oscuro
  fill (30);
  noStroke ();
  rect (x+l*9, y+l*6, lb*2, l*2);
  rect (x+l*11, y+l*6, lb*3, l);
  rect (x+l*14, y+l*6, lb, l*2);
  rect (x+l*12, y+l*7, lb, l*2);
  rect (x+l*11, y+l*9, lb, l);
  rect (x+l*13, y+l*9, lb, l);
  rect (x+l*11, y+l*12, lb, l);
  rect (x+l*13, y+l*12, lb, l);
  rect (x+l*12, y+l*11, lb, l);
  rect (x+l*6, y+l*12, lb, l*2);
  rect (x+l*3, y+l*13, lb, l);
  rect (x+l*4, y+l*14, lb*2, l);
  rect (x+l*2, y+l*15, lb*2, l);
  rect (x+l*4, y+l*17, lb, l*2);
  rect (x+l*3, y+l*18, lb, l);
  rect (x+l*7, y+l*20, lb, l);
  rect (x+l*8, y+l*21, lb, l);
  rect (x+l*13, y+l*20, lb, l);
  rect (x+l*12, y+l*21, lb, l);
  rect (x+l*14, y+l*13, lb, l); //aqui
  rect (x+l*16, y+l*13, lb, l);
  rect (x+l*15, y+l*14, lb, l);
  rect (x+l*16, y+l*15, lb*2, l);
 rect (x+l*15, y+l*17, lb, l*2);
  rect (x+l*16, y+l*18, lb, l);
  
  //gris bajitos
  fill (200);
  noStroke ();
  rect (x+l*6, y+l*4, lb*2, l);
  rect (x+l*8, y+l*9, lb, l);
  rect (x+l*7, y+l*8, lb, l);
  rect (x+l*10, y+l*10, lb, l);
  rect (x+l*14, y+l*10, lb, l);
  rect (x+l*10, y+l*14, lb, l);
  rect (x+l*7, y+l*15, lb*3, l);
  rect (x+l*11, y+l*15, lb*3, l);
  rect (x+l*10, y+l*16, lb, l);
  rect (x+l*9, y+l*17, lb, l);
  rect (x+l*11, y+l*17, lb, l);
  rect (x+l*7, y+l*18, lb*2, l*2);
  rect (x+l*12, y+l*18, lb*2, l*2);
  rect (x+l*9, y+l*19, lb*3, l);
  rect (x+l*5, y+l*21, lb*2, l);
  rect (x+l*14, y+l*21, lb*2, l);
  rect (x+l*7, y+l*22, lb*2, l);
  rect (x+l*12, y+l*22, lb*2, l);
  
  //morado
  fill (25, 20, 66);
  noStroke ();
  rect (x+l*6, y+l*9, lb*2, l);
  rect (x+l*8, y+l*10, lb, l);
 
}


void Voltorb() 
{
  fill(255);
  text("Voltorb",0,150);
  x = 0;
  y = 0;
  lb=5;
  l=5;


  //negro
  fill (0);
  noStroke ();
  rect (x+lb*8, y, lb*7, l);
  rect (x+lb*6, y+l, lb*3, l);
  rect (x+lb*14, y+l, lb*3, l);
  rect (x+lb*5, y+l*2, lb*2, l);
  rect (x+lb*16, y+l*2, lb*2, l);
  rect (x+lb*4, y+l*3, lb, l);
  rect (x+lb*18, y+l*3, lb, l);
  rect (x+lb*2, y+l*4, lb*3, l);
  rect (x+lb*18, y+l*4, lb*3, l);
  rect (x+lb*2, y+l*5, lb, l*2);
  rect (x+lb*20, y+l*5, lb, l*2);
  rect (x+lb, y+l*6, lb, l*2);
  rect (x+lb*21, y+l*6, lb, l*2);
  rect (x, y+l*7, lb, l*7);
  rect (x+lb*22, y+l*7, lb, l*7);
  rect (x+lb, y+l*13, lb, l*2);
  rect (x+lb*21, y+l*13, lb, l*2);
  rect (x+lb*2, y+l*14, lb, l*3);
  rect (x+lb*20, y+l*14, lb, l*3);
  rect (x+lb*3, y+l*16, lb, l*2);
  rect (x+lb*19, y+l*16, lb, l*2);
  rect (x+lb*4, y+l*17, lb, l*2);
  rect (x+lb*18, y+l*17, lb, l*2);
  rect (x+lb*5, y+l*18, lb, l*2);
  rect (x+lb*17, y+l*18, lb, l*2);
  rect (x+lb*6, y+l*19, lb*4, l);
  rect (x+lb*13, y+l*19, lb*4, l);
  rect (x+lb*9, y+l*20, lb*5, l);
  
  //ojos
  
  rect (x+lb*8, y+l*9, lb, l);
  rect (x+lb*9, y+l*10, lb*2, l*2);
  rect (x+lb*9, y+l*12, lb, l);
  rect (x+lb*11, y+l*11, lb*2, l);
  rect (x+lb*12, y+l*12, lb*3, l);
  rect (x+lb*15, y+l*10, lb, l*2);
  rect (x+lb*17, y+l*12, lb, l);
  rect (x+lb*18, y+l*11, lb*2, l*2);
  rect (x+lb*20, y+l*10, lb, l);
  rect (x+lb*21, y+l*9, lb, l);
  
  //rojo
  fill (255, 0, 0);
  noStroke ();
  rect (x+lb*2, y+l*7, lb, l);
  rect (x+lb, y+l*8, lb*7, l*4);
  rect (x+lb*2, y+l*12, lb*6, l);
  rect (x+lb*2, y+l*12, lb*6, l);
  rect (x+lb*4, y+l*13, lb*5, l);
  rect (x+lb*6, y+l*14, lb*3, l);
  rect (x+lb*9, y+l*14, lb*11, l*2);
  rect (x+lb*12, y+l*16, lb*6, l);
  rect (x+lb*14, y+l*13, lb*5, l);
  rect (x+lb*15, y+l*12, lb*2, l);
  rect (x+lb*13, y+l*10, lb*2, l*2);
  rect (x+lb*11, y+l*10, lb*2, l);
  rect (x+lb*8, y+l*8, lb, l);
  rect (x+lb*3, y+l*5, lb*2, l*3);
  rect (x+lb*5, y+l*3, lb*2, l*5);
  rect (x+lb*7, y+l*2, lb*2, l*6);
  rect (x+lb*9, y+l, lb*5, l*9);
  rect (x+lb*14, y+l*2, lb*2, l*8);
  rect (x+lb*16, y+l*3, lb*2, l*9);
  rect (x+lb*18, y+l*5, lb*2, l*6);
  rect (x+lb*20, y+l*7, lb, l*3);
  rect (x+lb*21, y+l*8, lb, l);
  
  //blanco
  fill (255);
  noStroke ();
  rect (x+lb, y+l*12, lb, l);
  rect (x+lb*2, y+l*13, lb*2, l);
  rect (x+lb*3, y+l*14, lb*3, l*2);
  rect (x+lb*4, y+l*16, lb*2, l);
  rect (x+lb*5, y+l*17, lb, l);
  rect (x+lb*6, y+l*15, lb*3, l*4);
  rect (x+lb*9, y+l*16, lb*3, l*3);
  rect (x+lb*12, y+l*17, lb*5, l*2);
  rect (x+lb*10, y+l*19, lb*3, l);
  rect (x+lb*17, y+l*17, lb, l);
  rect (x+lb*18, y+l*16, lb, l);
  
  //ojos
  rect (x+lb*8, y+l*10, lb, l*3);
  rect (x+lb*10, y+l*12, lb*2, l);
  rect (x+lb*9, y+l*13, lb*5, l);
  
  rect (x+lb*18, y+l*12, lb, l);
  rect (x+lb*19, y+l*13, lb*2, l);
  rect (x+lb*20, y+l*11, lb, l*3);
  rect (x+lb*21, y+l*10, lb, l*3);
  
}


void Perro() 
{
    fill(255);
  text("Perro del",0,170);
  text("Espacio",0,200);
 x = 0;
 y = 0;
 lb = 5;
 l = 5;
  //blanco
  fill (255);
  noStroke ();
  rect (x+lb, y+l*21, lb*16, l*3);
  rect (x+lb*4, y+l*24, lb*7, l*2);
  rect (x+lb*14, y+l*24, lb*4, l*2);
  rect (x+lb*5, y+l*17, lb*12, l*4);
  rect (x+lb*7, y+l*15, lb*9, l*2);
  rect (x+lb*10, y+l*7, lb*12, l*8);
  rect (x+lb*11, y+l*5, lb*9, l*2);
  rect (x+lb*14, y+l*4, lb*5, l);
  rect (x+lb*22, y+l*13, lb, l);
  
  //negro
  fill (0);
  noStroke ();
  rect (x+lb*3, y+l*21, lb, l*4);
  rect (x+lb*4, y+l*19, lb, l*2);
  rect (x+lb*4, y+l*25, lb, l);
  rect (x+lb*5, y+l*26, lb*7, l); 
  rect (x+lb*6, y+l*23, lb, l);
  rect (x+lb*7, y+l*24, lb*4, l);
  rect (x+lb*11, y+l*23, lb, l);
  rect (x+lb*11, y+l*25, lb, l);
  rect (x+lb*12, y+l*22, lb, l*3);
  rect (x+lb*13, y+l*24, lb, l);
  rect (x+lb*14, y+l*25, lb, l);
  rect (x+lb*15, y+l*26, lb*3, l);
  rect (x+lb*18, y+l*25, lb, l*2);
  rect (x+lb*17, y+l*24, lb, l);
  rect (x+lb*16, y+l*21, lb, l*3);
  rect (x+lb*17, y+l*17, lb, l*4);
  rect (x+lb*16, y+l*15, lb, l*2);
  rect (x+lb*17, y+l*14, lb, l);
  rect (x+lb*18, y+l*15, lb*4, l);
  rect (x+lb*22, y+l*14, lb, l);
  rect (x+lb*23, y+l*11, lb, l*3);
  rect (x+lb*22, y+l*10, lb, l*3);
  rect (x+lb*21, y+l*7, lb, l*3);
  rect (x+lb*20, y+l*5, lb, l*2);
  rect (x+lb*19, y+l*8, lb, l*2);
  rect (x+lb*18, y+l*9, lb, l);
  rect (x+lb*18, y+l*4, lb*2, l);
  rect (x+lb*14, y+l*3, lb*4, l);
  rect (x+lb*12, y+l*4, lb*2, l);
  rect (x+lb*11, y+l*5, lb, l);
  rect (x+lb*10, y+l*6, lb, l);
  rect (x+lb*9, y+l*7, lb, l*3);
  rect (x+lb*10, y+l*10, lb, l*3);
  rect (x+lb*11, y+l*12, lb, l*2);
  rect (x+lb*12, y+l*14, lb*3, l);
  rect (x+lb*15, y+l*11, lb, l*3);
  rect (x+lb*14, y+l*9, lb, l*2);
  rect (x+lb*13, y+l*7, lb, l*2);
  rect (x+lb*9, y+l*13, lb, l*2);
  rect (x+lb*7, y+l*15, lb*2, l);
  rect (x+lb*6, y+l*16, lb, l);
  rect (x+lb*5, y+l*17, lb, l*2);
  rect (x+lb*4, y+l*19, lb, l*2 );
  rect (x+lb*2, y+l*21, lb, l);
  rect (x+lb, y+l*20, lb, l);
  rect (x, y+l*19, lb, l*3);
  rect (x+lb, y+l*22, lb, l*2);
  rect (x+lb*2, y+l*24, lb, l);
  
  //casco
  rect (x+lb*12, y+l, lb*8, l); 
  rect (x+lb*20, y+l*2, lb, l);
  rect (x+lb*21, y+l*3, lb, l);
  rect (x+lb*22, y+l*4, lb, l);
  rect (x+lb*23, y+l*5, lb, l);
  rect (x+lb*24, y+l*6, lb, l*2);
  rect (x+lb*25, y+l*8, lb, l*7);
  rect (x+lb*24, y+l*15, lb, l);
  rect (x+lb*23, y+l*16, lb, l);
  rect (x+lb*21, y+l*17, lb*2, l);
  rect (x+lb*15, y+l*18, lb*7, l); //sdgre
  rect (x+lb*10, y+l*2, lb*2, l);
  rect (x+lb*9, y+l*3, lb, l);
  rect (x+lb*8, y+l*4, lb, l);
  rect (x+lb*7, y+l*5, lb, l*2);
  rect (x+lb*6, y+l*7, lb, l*4);
  rect (x+lb*7, y+l*11, lb, l*2);
  rect (x+lb*8, y+l*13, lb, l);
  rect (x+lb*9, y+l*14, lb, l);
  rect (x+lb*10, y+l*15, lb, l);
  rect (x+lb*11, y+l*16, lb*2, l);
  rect (x+lb*13, y+l*17, lb*2, l);
  
}

}
  
 Juego elJuego;

void setup(){
  size(800,800);
  background(255);
  elJuego = new Juego();
}

void draw(){
  frameRate(12);
  elJuego.display();
  println(mouseX + " : " + mouseY);
}


void mousePressed(){
  elJuego.funcion();
}
 
 /*void setup(){
 size (800,800);
 }
 
 void draw(){
 background (255);
 fill (255,0,0);
 textSize (40);
 String s = "Inicio";
 textWidth(s);
 text(s, 0, 85);
 //textWidth (s);
// textSize (40);
// text ("Inicio",100,30);
 
 }*/
