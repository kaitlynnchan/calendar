import java.util.Calendar;
import java.util.GregorianCalendar;

Clock c = new Clock();
MonthlyCalendar m = new MonthlyCalendar();
Calendar cal = Calendar.getInstance(); 
GregorianCalendar calG = (GregorianCalendar) GregorianCalendar.getInstance(); 

final int THISMONTH = 0;
final int PASTMONTH = 1;
final int NEXTMONTH = 2;
int mode = THISMONTH;

void setup() {
  size(640, 360, FX2D);
  textAlign(CENTER);
}

void draw() {
  background(255);
  
  c.getTime();
  c.display();
  m.getDate();
  if(mode == THISMONTH){
    m.display();
  } else if(mode == PASTMONTH){
    
    MonthlyCalendar past = new MonthlyCalendar(-1, m);
    past.displayMonth(false);
  } else if(mode == NEXTMONTH){
    m.displayMonth(true);
  }
  
  
  //------------- next month -------------------//
  rect(10, 10, 10, 10);
  
}

void mousePressed(){
  if(mouseX > 10 && mouseY > 10 && mouseX < 20 && mouseY < 20){
    //m.moveMonth(-1);
    mode = PASTMONTH;
  }
}
