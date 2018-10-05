import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Chemotaxis extends PApplet {

thing[] alpha;

public void setup() {
  
  alpha = new thing[100];
  for (int i = 0;i < alpha.length; i++) {
    alpha[i] = new thing();
  }
}

public void draw() {
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

  public void walk() {
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

  public void tele() {
    randomWalkf = 10;
    randomWalkb = 10;
  }

  public void show() {
    fill(255);
    ellipse((float)myX,(float)myY,10,10);
    }
}

public void mousePressed() {
  for (int i = 0; i < alpha.length; i++) {
    alpha[i].tele();
  }
}
  public void settings() {  size(500,500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
