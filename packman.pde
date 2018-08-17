PImage [][] packman = new PImage [4][5];
int first;
int second=1;
int xPos;
int yPos;

void setup() {
  frameRate(15);
  size(640,480);
  background(255);
  packman[0][0] = loadImage("packman_left_1.png");
  packman[0][1] = loadImage("packman_left_2.png");
  packman[0][2] = loadImage("packman_left_3.png");
  packman[0][3] = loadImage("packman_left_4.png");
  packman[0][4] = loadImage("packman_left_5.png");
  packman[1][0] = loadImage("packman_right_1.png");
  packman[1][1] = loadImage("packman_right_2.png");
  packman[1][2] = loadImage("packman_right_3.png");
  packman[1][3] = loadImage("packman_right_4.png");
  packman[1][4] = loadImage("packman_right_5.png");
  packman[2][0] = loadImage("packman_up_1.png");
  packman[2][1] = loadImage("packman_up_2.png");
  packman[2][2] = loadImage("packman_up_3.png");
  packman[2][3] = loadImage("packman_up_4.png");
  packman[2][4] = loadImage("packman_up_5.png");
  packman[3][0] = loadImage("packman_down_1.png");
  packman[3][1] = loadImage("packman_down_2.png");
  packman[3][2] = loadImage("packman_down_3.png");
  packman[3][3] = loadImage("packman_down_4.png");
  packman[3][4] = loadImage("packman_down_5.png");
}

void draw() {
  background(255);
  pushMatrix();
  strokeWeight(20);
  line(0,0,0,height);
  line(0,0,width,0);
  line(0,height,width,height);
  line(width,0,width,height);
  popMatrix();
  image(packman[first][second],xPos+300,yPos+190);
  second++;
  if(second==4) {
    second=0;
  }
}

void keyPressed() {
  if(key == CODED) {
    if(keyCode==LEFT) {
      first=0;
      xPos=xPos-5;      
      }
    else if(keyCode==RIGHT) {
      first=1;      
      xPos=xPos+5;
     }
    else if(keyCode==UP) {
      first=2;
      yPos=yPos-5;
     }
    else if(keyCode==DOWN) {
      first=3;
      yPos=yPos+5;
    }
  }
}
