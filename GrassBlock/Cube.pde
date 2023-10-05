class Cube {
  PImage lateralFaces, upFace, downFace;
  float theta = radians(1);
  int totalPoints = 8;
  PVector[] points;

  Cube(int size) {
    points = new PVector[totalPoints];
    points[0] = new PVector(-size, -size, -size);
    points[1] = new PVector(size, -size, -size);
    points[2] = new PVector(size, size, -size);
    points[3] = new PVector(-size, size, -size);
    points[4] = new PVector(-size, -size, size);
    points[5] = new PVector(size, -size, size);
    points[6] = new PVector(size, size, size);
    points[7] = new PVector(-size, size, size);

    lateralFaces = loadImage("imgs/lateral.jpg");
    upFace = loadImage("imgs/up.jpg");
    downFace = loadImage("imgs/down.jpg");
  }

  void show() {
    noStroke();
    translate(width / 2, height / 2);

    // BACK FACE
    beginShape();
    texture(lateralFaces);
    vertex(points[0].x, points[0].y, points[0].z, 0, 0);
    vertex(points[1].x, points[1].y, points[1].z, lateralFaces.width, 0);
    vertex(points[2].x, points[2].y, points[2].z, lateralFaces.width, lateralFaces.height);
    vertex(points[3].x, points[3].y, points[3].z, 0, lateralFaces.height);
    endShape(CLOSE);

    // FRONT FACE
    beginShape();
    texture(lateralFaces);
    vertex(points[4].x, points[4].y, points[4].z, 0, 0);
    vertex(points[5].x, points[5].y, points[5].z, lateralFaces.width, 0);
    vertex(points[6].x, points[6].y, points[6].z, lateralFaces.width, lateralFaces.height);
    vertex(points[7].x, points[7].y, points[7].z, 0, lateralFaces.height);
    endShape(CLOSE);

    // LEFT FACE
    beginShape();
    texture(lateralFaces);
    vertex(points[0].x, points[0].y, points[0].z, 0, 0);
    vertex(points[4].x, points[4].y, points[4].z, lateralFaces.width, 0);
    vertex(points[7].x, points[7].y, points[7].z, lateralFaces.width, lateralFaces.height);
    vertex(points[3].x, points[3].y, points[3].z, 0, lateralFaces.height);
    endShape(CLOSE);

    // RIGHT FACE
    beginShape();
    texture(lateralFaces);
    vertex(points[1].x, points[1].y, points[1].z, 0, 0);
    vertex(points[5].x, points[5].y, points[5].z, lateralFaces.width, 0);
    vertex(points[6].x, points[6].y, points[6].z, lateralFaces.width, lateralFaces.height);
    vertex(points[2].x, points[2].y, points[2].z, 0, lateralFaces.height);
    endShape(CLOSE);

    // UP FACE
    beginShape();
    texture(upFace);
    vertex(points[0].x, points[0].y, points[0].z, 0, 0);
    vertex(points[1].x, points[1].y, points[1].z, upFace.width, 0);
    vertex(points[5].x, points[5].y, points[5].z, upFace.width, upFace.height);
    vertex(points[4].x, points[4].y, points[4].z, 0, upFace.height);
    endShape(CLOSE);

    // DOWN FACE
    beginShape();
    texture(downFace);
    vertex(points[2].x, points[2].y, points[2].z, 0, 0);
    vertex(points[6].x, points[6].y, points[6].z, downFace.width, 0);
    vertex(points[7].x, points[7].y, points[7].z, downFace.width, downFace.height);
    vertex(points[3].x, points[3].y, points[3].z, 0, downFace.height);
    endShape(CLOSE);
  }

  void applyRotation(float[][] R) {
    for (int i = 0; i < points.length; i++) {
      float x = points[i].x;
      float y = points[i].y;
      float z = points[i].z;

      points[i].x = R[0][0] * x + R[0][1] * y + R[0][2] * z;
      points[i].y = R[1][0] * x + R[1][1] * y + R[1][2] * z;
      points[i].z = R[2][0] * x + R[2][1] * y + R[2][2] * z;
    }
  }
}
