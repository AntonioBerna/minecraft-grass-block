float fps = 60;
PImage bg;

Cube cube;
Rotation R;

void setup() {
  size(1280, 662, P3D);
  frameRate(fps);
  pixelDensity(displayDensity());
  smooth();
  
  bg = loadImage("imgs/bg.jpg");
  background(bg);

  cube = new Cube(100);
  R = new Rotation(1.5);
}

void draw() {
  background(bg);

  cube.show();

  if (keyPressed) {
    if (keyCode == UP) {
      cube.applyRotation(R.x());
    } else if (keyCode == DOWN) {
      cube.applyRotation(R.xT());
    }

    if (keyCode == RIGHT) {
      cube.applyRotation(R.y());
    } else if (keyCode == LEFT) {
      cube.applyRotation(R.yT());
    }

    if (key == 'd') {
      cube.applyRotation(R.z());
    } else if (key == 'a') {
      cube.applyRotation(R.zT());
    }
  }
}
