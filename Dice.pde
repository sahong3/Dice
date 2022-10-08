 int sum = 0;
void setup()
  {   
      background(255);
      size(500,500);
      noLoop();
      textAlign(CENTER);
  }
  void draw()
  {  
    fill(255);
    rect(0,0,500,500);
    for (int y = 30; y< 390;y+= 80){
      for(int x = 20; x < 490; x+= 80){
        Die bob = new Die(x,y);
        bob.show();
      }
     }
     fill(0);
     textSize(25);
     text("Total: " + sum, 250,465);
  }
  void mousePressed()
  {
      redraw();
      sum = 0;
   
  }
  class Die //models one single dice cube
  {
      int myX, myY, dots;
      
      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
          roll();
      }
      void roll()
      {
          dots = (int)(Math.random()*6)+1;
      }
      void show()
      {
        fill(255);
        stroke(0);
        strokeWeight(2);
        rect(myX,myY,60,60);
        fill((int)(Math.random()*255)+1,(int)(Math.random()*255)+1,(int)(Math.random()*255)+1);
        noStroke();

        if(dots == 1){
         ellipse(myX+30,myY+30,10,10);
         sum = sum+1;
       }
       else if (dots == 2){
         ellipse(myX+15,myY+30,10,10);
         ellipse(myX+45,myY+30,10,10);
         sum = sum+2;
       }
       else if (dots == 3){
         ellipse(myX+15,myY+15,10,10);
         ellipse(myX+30,myY+30,10,10);
         ellipse(myX+45,myY+45,10,10);
         sum = sum+3;
       }
       else if (dots == 4){
         ellipse(myX+15,myY+15,10,10);
         ellipse(myX+15,myY+45,10,10);
         ellipse(myX+45,myY+45,10,10);
         ellipse(myX+45,myY+15,10,10);
         sum = sum+4;
       }
       else if (dots == 5){
         ellipse(myX+15,myY+15,10,10);
         ellipse(myX+15,myY+45,10,10);
         ellipse(myX+45,myY+45,10,10);
         ellipse(myX+45,myY+15,10,10);
         ellipse(myX+30,myY+30,10,10);
         sum = sum+5;
       }
       else {
         ellipse(myX+15,myY+15,10,10);
         ellipse(myX+15,myY+45,10,10);
         ellipse(myX+45,myY+45,10,10);
         ellipse(myX+45,myY+15,10,10);
         ellipse(myX+15,myY+30,10,10);
         ellipse(myX+45,myY+30,10,10);
         sum = sum+6;
       }
             
      }
  }
