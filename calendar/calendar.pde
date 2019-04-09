import java.util.Calendar;

Clock c = new Clock();
MonthlyCalendar m = new MonthlyCalendar();
Calendar cal = Calendar.getInstance(); 

void setup() {
  size(640, 360, FX2D);
  textAlign(CENTER);
}

void draw() {
  background(255);
  
  c.getTime();
  c.display();
  m.getDate();
  m.display();
}