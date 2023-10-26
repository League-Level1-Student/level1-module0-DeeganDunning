 static final int WIDTH = 800;
    static final int HEIGHT = 600;
int x = WIDTH/2;
int y = HEIGHT/2;
int xSpeed = -5;
int ySpeed = 4;
int score = 0;
    @Override
    public void settings() {
        size(WIDTH, HEIGHT);
    }

    @Override
    public void setup() {
        
    }

    @Override
    public void draw() {
      background( 0,0,0);
      fill(255, 255, 255);
      rect(0, mouseY, 10, 70);   
    rect( WIDTH - 10, 0, 10, HEIGHT);
    fill(255,255,255);
    rect( x, y, 15, 15);
     if (x < 10 && y > mouseY && y < mouseY + 70){
      xSpeed = -xSpeed;
      //  ySpeed = -ySpeed; 
       score++;
     }
     if (x > WIDTH - 40){
       xSpeed = -xSpeed;
     }
   if (y > 590) {
     ySpeed = -ySpeed;
   }
   if (y < 0) {
    ySpeed = -ySpeed; 
   }
  x+=xSpeed ;
  y+=ySpeed ;
    
    
    fill (255, 255, 255);
    textSize(20);
    text("Score:" + score, 3, 15);
    
       
     
     
     if (x < 0){
      fill (255,255,255);
      textSize(24);
      text("GAME OVER" , 270, 350);
       stop();
     }
     
   
     
    }
