class Translation {
  float theta, l;

  Translation(float theta, float l) {
    this.theta = radians(theta);
    this.l = l;
  }

  float[][] x() {
    float[][] x = {
      {1, 0, 0, l},
      {0, cos(theta), -sin(theta), 0},
      {0, sin(theta), cos(theta), 0},
      {0, 0, 0, 1}
    };
    return x;
  }

  float[][] xInv() {
    float[][] xInv = {
      {1, 0, 0, -l},
      {0, cos(theta), sin(theta), 0},
      {0, -sin(theta), cos(theta), 0},
      {0, 0, 0, 1}
    };
    return xInv;
  }

  float[][] y() {
    float[][] y = {
      {cos(theta), 0, sin(theta), 0},
      {0, 1, 0, l},
      {-sin(theta), 0, cos(theta), 0},
      {0, 0, 0, 1}
    };
    return y;
  }

  float[][] yInv() {
    float[][] yInv = {
      {cos(theta), 0, -sin(theta), 0},
      {0, 1, 0, -l},
      {sin(theta), 0, cos(theta), 0},
      {0, 0, 0, 1}
    };
    return yInv;
  }

  float[][] z() {
    float[][] z = {
      {cos(theta), -sin(theta), 0, 0},
      {sin(theta), cos(theta), 0, 0},
      {0, 0, 1, l},
      {0, 0, 0, 1}
    };
    return z;
  }

  float[][] zInv() {
    float[][] zInv = {
      {cos(theta), sin(theta), 0, 0},
      {-sin(theta), cos(theta), 0, 0},
      {0, 0, 1, -l},
      {0, 0, 0, 1}
    };
    return zInv;
  }
}
