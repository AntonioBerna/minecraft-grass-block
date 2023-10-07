class Rotation {
  float theta;

  Rotation(float angle) {
    this.theta = radians(angle);
  }

  float[][] x() {
    float[][] x = {{1, 0, 0}, {0, cos(theta), -sin(theta)}, {0, sin(theta), cos(theta)}};
    return x;
  }
  
  float[][] xT() {
    float[][] xT = {{1, 0, 0}, {0, cos(theta), sin(theta)}, {0, -sin(theta), cos(theta)}};
    return xT;
  }

  float[][] y() {
    float[][] y = {{cos(theta), 0, sin(theta)}, {0, 1, 0}, {-sin(theta), 0, cos(theta)}};
    return y;
  }
  
  float[][] yT() {
    float[][] yT = {{cos(theta), 0, -sin(theta)}, {0, 1, 0}, {sin(theta), 0, cos(theta)}};
    return yT;
  }

  float[][] z() {
    float[][] z = {{cos(theta), -sin(theta), 0}, {sin(theta), cos(theta), 0}, {0, 0, 1}};
    return z;
  }
  
  float[][] zT() {
    float[][] zT = {{cos(theta), sin(theta), 0}, {-sin(theta), cos(theta), 0}, {0, 0, 1}};
    return zT;
  }
}
