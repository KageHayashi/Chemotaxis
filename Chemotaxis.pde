thing[] alpha;

void setup() {
  size(500,500);
  alpha = new thing[100];
  for (int i = 0;i < alpha.length; i++) {
    alpha[i] = new thing();
  }
}

void draw() {
  background(155);
  for (int i = 0; i < alpha.length; i++) {
    alpha[i].walk();
    alpha[i].show();
  }
}

class thing {
  int myX, myY;
  int myColor;
  
  thing() {
    myX = 250;
    myY = 250;
  }
  
  void walk() {
    myX = myX + (int)(Math.random()*10-5);
    myY = myY + (int)(Math.random()*10-5);
    myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
  
  void show() {
    fill(myColor);
    ellipse(myX,myY,10,10);
  }
}
