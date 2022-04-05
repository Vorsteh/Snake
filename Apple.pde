class Apple{
  int x, y;
  final int size = 50;
  
  Apple(){
    reset();
  }

  
  void show(){
    fill(0, 255, 70);
    rect(x, y, size, size);
  }
  
  void reset(){
    x = (int) random(0, 600);
    y = (int) random(0, 600);
  }
  
  void checkCollision(Apple a){
    if(size == 30){
    
    }
  }

}
