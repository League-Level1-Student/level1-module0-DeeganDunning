 static final int WIDTH = 800;
    static final int HEIGHT = 600;
int x = WIDTH/2;
int y = HEIGHT/2;
int xSpeed = -5;

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
     rect(10, mouseY, 10, 70);   
    rect( WIDTH - 20, 0, 10, HEIGHT);
    rect( x, y, 15, 15);
     x+=xSpeed ;
     if (x < 20 && y > mouseY && y < mouseY + 70){
       xSpeed = -xSpeed;
     }
    }
