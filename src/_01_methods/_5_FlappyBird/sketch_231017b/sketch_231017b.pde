   static final int WIDTH = 800;
    static final int HEIGHT = 600;
    int birdYVelocity = -10;
    int gravity = 1;
int x =  200 ;
int y =  300 ;
    @Override
    public void settings() {
        size(WIDTH, HEIGHT);
    }

    @Override
    public void setup() {
        
    }

    @Override
    public void draw() {
        background( 0, 0, 0);
        fill(255, 255, 0);
        stroke( 255, 255, 255);
        ellipse( x , y , 50 , 50);
        y += birdYVelocity;
        birdYVelocity += gravity;
        fill( 0, 255, 0);
        rect( pipeX , pipeY , 75, 200);
        
    }
    public void mousePressed(){
     birdYVelocity = -10; 
    }
  
