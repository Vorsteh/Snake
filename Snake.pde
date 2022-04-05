Apple apple;
Worm snake;


int width = 700;
int height = 700;

char dir = 'R';

void setup(){
  size(700, 700);
  background(0);
  apple = new Apple();
  snake = new Worm();
}


void draw(){
  background(255);
  
  drawGrid();
  apple.show();
  snake.show();
  
  snake.move(dir);
  
  
  
  
  if(keyPressed == true && key == 'w'){
    dir = 'U';
  }
  if(keyPressed == true && key == 's'){
    dir = 'D';
  }
  if(keyPressed == true && key == 'a'){
    dir = 'L';
  }
  if(keyPressed == true && key == 'd'){
    dir = 'D';
  }
  System.out.println("Direction: " + dir);
}

void drawGrid(){
  for(int i = 0; i < width; i+=50){
    line(i, 0, i, height);
  }
  for(int j = 0; j < height; j+=50){
    line(0, j, width, j);
  }
}
