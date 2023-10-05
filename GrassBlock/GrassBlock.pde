color c = color(75);
float fps = 60;

Cube cube;
Rotation R;

void setup() {
  size(800, 800, P3D);
  frameRate(fps);
  pixelDensity(displayDensity());
  smooth();
  background(c);

  cube = new Cube(100);
  R = new Rotation(1.5);
}

void draw() {
  background(c);

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
