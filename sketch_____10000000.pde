void setup() {
  size(800, 800);
  background(#03FF1D);
}

int timeLimit=22;
int countDown;
int c;
float x=350;
float y=350;
float a=0;
float b=0;
int speed=5;

void draw() {
  background(#03FF1D);
  if ((x<(a+85))&&((x+100)>(a-85))&&((b+85)>(x+c))&&((b-85)<(x+c+100))) {
      background(0, 0, 255);
      fill(0);
      textAlign(CENTER, CENTER);
      text("you lose.", width/2, height/2);
      text("Please think about ",400,500);
      text("why you lost",400,600);
      text("by tomorrow",400,700);
      return;
    }

    
  //count down

  int ms =millis()/1000;
  println(ms);
  fill(0);
  countDown=timeLimit-ms;
  if (countDown>0) {
    textSize(80);
    fill(#0006FF);
    text(+countDown, 700, 720);


    //keisukenokao

   

    noStroke();
    fill(221, 169, 130);
     
    triangle(x, 450+c, 400, 470+c, 450, 450+c);
    rect(x, x+c, 100, 100);
    fill(254, 255, 3);
    triangle(375, x+c, 450, 300+c, 450, 350+c);
    triangle(400, x+c, 400, 300+c, 450, 350+c);
    triangle(375, x+c, 375, 300+c, 425, 350+c);
    triangle(x, x+c, x, 300+c, 400, 350+c);
    fill(0);
    arc(375, 375+c, 50, 70, 0, PI);
    arc(425, 375+c, 50, 70, 0, PI);

    stroke(0);
    strokeWeight(6);

    fill(221, 169, 130);
    arc(355, 450+c, 50, 50, radians(270), radians(360));
    arc(445, 450+c, 50, 50, radians(180), radians(270));
//miss
  
    //ball

    a+=speed;
    if (a > width+170) {
      speed+=2;
      a=-170;
      b=random(170, width-170);
    }        
    translate(a, b);
    noStroke();
    fill(255, 255, 255);
    ellipse(0, 0, 170, 170); 
   
   //keykbowrd
  
    if (keyPressed) {
      if (key=='s') {
        c+=15;
        if(375+c >height){
          c =height-375;
        }
      } else if (key=='w') {
        c-=15;
        if(375+c <0){
          c = -375;
        }
      }
    }
  } else if (countDown<=0) {
    background(255, 0, 0);
    textSize(100);
    text("you win", 220, 350);
    text("yaruyan!!",200,450);
  }
  
  
  
  
 
     
}
