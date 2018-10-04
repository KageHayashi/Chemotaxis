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
  double myX, myY;
  double randomWalkf;
  double randomWalkb;
  int myColor;
  
  thing() {
    myX = 250;
    myY = 250;
   randomWalkf = Math.random()*5;
   randomWalkb = Math.random()*-5;
  }
  
  void walk() {
    if (myX <= mouseX) {
      myX = myX + randomWalkf;
      //myY = myY + (int)(Math.random()*5);
      myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    }
    else if (myX >= mouseX) {
      myX = myX + randomWalkb;
      //myY = myY + (int)(Math.random()*-5);
    }
    if (myY <= mouseY) {
      //myX = myX + (int)(Math.random()*5);
      myY = myY + randomWalkf;
    }
    else if (myY >= mouseY) {
      //myX = myX + (int)(Math.random()*-5);
      myY = myY + randomWalkb;
    }
  } 
  
  void tele() {
    randomWalkf = 10;
    randomWalkb = 10;
  }
  
  void show() {
    fill(255);
    ellipse((float)myX,(float)myY,10,10);
    }
}

void mousePressed() {
  for (int i = 0; i < alpha.length; i++) {
    alpha[i].tele();
  }
}