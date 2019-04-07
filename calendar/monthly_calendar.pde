
import java.util.Calendar;
import java.util.Date;
class MonthlyCalendar{
 
  private int day;
  private int month;
  private int year;
  
  MonthlyCalendar(){
    
  }
  
  public void display(){
    stroke(0);
    line(0, height/5, width, height/5);
    line(0, 2*(height/5), width, 2*(height/5));
    line(0, 3*(height/5), width, 3*(height/5));
    line(0, 4*(height/5), width, 4*(height/5));
    line(width/7, 0, width/7, height);
    line(2*(width/7), 0, 2*(width/7), height);
    line(3*(width/7), 0, 3*(width/7), height);
    line(4*(width/7), 0, 4*(width/7), height);
    line(5*(width/7), 0, 5*(width/7), height);
    line(6*(width/7), 0, 6*(width/7), height);
    
  }
  
}
