   static final int WIDTH = 800;
    static final int HEIGHT = 600;
    int birdYVelocity = -10;
    int gravity = 1;
int birdX =  200 ;
int birdY =  300 ;
int pipeX = WIDTH;
int pipeY ;
int pipeGap = 200 ;
int upperPipeHeight = (int) random(100, 400);
int lowerY = upperPipeHeight + pipeGap ;
    @Override
    public void settings() {
        size(WIDTH, HEIGHT);
    }

    @Override
    public void setup() {
       
    }
    @Override
    public void draw() {
      noStroke();
        background( 0, 0, 0);
       if  (intersectsPipes()  ) {
         background(0, 0, 0);
         fill(255, 255, 255);
         textSize(42);
         text("GAME OVER", width/2 -50, height/2); 
         exit();
       }
        fill(255, 255, 0);
        stroke( 0, 0, 0);
        ellipse( birdX , birdY , 50 , 50);
        birdY += birdYVelocity;
        birdYVelocity += gravity;
        fill( 0, 255, 0);
        rect(0 , HEIGHT - 20 , WIDTH , 20 );
        rect( pipeX , pipeY , 75, upperPipeHeight);
         rect( pipeX , lowerY , 75, HEIGHT - upperPipeHeight + pipeGap);
        pipeX -= 2 ;
        if ( pipeX < -75) {
         pipeX = WIDTH ;
    upperPipeHeight = (int) random(100, 400);
         lowerY = upperPipeHeight + pipeGap ;
        }
        
    }
    public void mousePressed(){
     birdYVelocity = -10; 
    }

boolean intersectsPipes() { 
         if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+ 75)){
            return true; }
        else if (birdY > lowerY && birdX > pipeX && birdX < (pipeX+ 75)) {
            return true; }
        else { return false; }
}
