class Rect {
  late num height;
  late num width;
  Rect(this.height, this.width);
  get area {
    return this.height * this.width;
  }

  set areaHeight(value) {
    this.height = value;
  }
}

void main() {
  Rect r = new Rect(10, 4);
  r.areaHeight = 6;
  print(r.area);
}
