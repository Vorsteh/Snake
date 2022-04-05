class Worm {
  int x[] = new int[100];
  int y[] = new int[100];
  int bodyParts = 6;

  Worm() {
  }


  void show() {
    for (int i = 0; i < bodyParts; i++) {
      if (i == 0) {
        fill(155, 70, 150);
        rect(x[i], y[i], 50, 50);
      } else {
        fill(155, 70, 150);
        rect(x[i], y[i], 50, 50);
      }
    }
  }

  void move(char dir) {
    try {
      for (int i = bodyParts; i > 0; i--) {
        x[i] = x[i - 1];
        y[i] = y[i - 1];

        switch(dir) {
        case 'U':
          y[0] = y[0] - 50;
          break;
        case 'D':
          y[0] = y[0] + 50;
          break;
        case 'L':
          x[0] = x[0] - 50;
          break;
        case 'R':
          x[0] = x[0] + 50;
          break;
        }
      }
      Thread.sleep(1000);
    }catch(Exception e){
      e.printStackTrace();
    }
  }
}
