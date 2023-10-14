float fps = 60;
PImage bg;

Cube cube;
Translation T;
boolean flag = false;
float theta = 1.5;
float l = 1.5;

void setup() {
  size(1280, 662, P3D);
  frameRate(fps);
  pixelDensity(displayDensity());
  smooth();

  bg = loadImage("imgs/bg.jpg");
  background(bg);

  cube = new Cube(100);
  T = new Translation(theta, 0);
}

void draw() {
  background(bg);

  cube.show();

  if (keyPressed) {
    if (key == 'r') {
      flag = false;
      T.theta = radians(theta);
      T.l = 0;
    } else if (key == 't') {
      flag = true;
      T.theta = 0;
      T.l = l;
    }

    if (flag) { // Only Translation
      if (keyCode == RIGHT) {
        cube.applyRotoTranslation(T.x());
      } else if (keyCode == LEFT) {
        cube.applyRotoTranslation(T.xInv());
      }

      if (keyCode == UP) {
        cube.applyRotoTranslation(T.yInv());
      } else if (keyCode == DOWN) {
        cube.applyRotoTranslation(T.y());
      }

      if (key == 'd') {
        cube.applyRotoTranslation(T.z());
      } else if (key == 'a') {
        cube.applyRotoTranslation(T.zInv());
      }
    } else { // Only Rotation
      if (keyCode == UP) {
        cube.applyRotoTranslation(T.x());
      } else if (keyCode == DOWN) {
        cube.applyRotoTranslation(T.xInv());
      }

      if (keyCode == RIGHT) {
        cube.applyRotoTranslation(T.y());
      } else if (keyCode == LEFT) {
        cube.applyRotoTranslation(T.yInv());
      }

      if (key == 'd') {
        cube.applyRotoTranslation(T.z());
      } else if (key == 'a') {
        cube.applyRotoTranslation(T.zInv());
      }
    }
  }
}
