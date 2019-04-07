Clock c = new Clock();
MonthlyCalendar m = new MonthlyCalendar();
void setup() {
  size(640, 360, FX2D);
  stroke(255);
  
}

void draw() {
  background(255);
  
  c.getTime();
  c.display();
  m.display();
}
