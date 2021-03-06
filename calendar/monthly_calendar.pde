class MonthlyCalendar {

  private int dayofWeek;
  private int dayofMonth;
  private int month;
  private int year;

  MonthlyCalendar() {
    dayofWeek = Calendar.DAY_OF_WEEK;
    dayofMonth = day();
    month = month();
    year = year();
  }

  public int getDayofWeekInt() {
    return this.dayofWeek;
  }

  public String getDayofWeek() {
    if (this.dayofWeek == 2) return "Monday";
    if (this.dayofWeek == 3) return "Tuesday";
    if (this.dayofWeek == 4) return "Wednesday";
    if (this.dayofWeek == 5) return "Thurday";
    if (this.dayofWeek == 6) return "Friday";
    if (this.dayofWeek == 7) return "Saturday";
    if (this.dayofWeek == 1) return "Sunday";
    return "this is the end of the world";
  }

  public int getDayofMonth() {
    return this.dayofMonth;
  }

  public String getMonth() {
    if (this.month == 1) return "January";
    if (this.month == 2) return "Feburary";
    if (this.month == 3) return "March";
    if (this.month == 4) return "April";
    if (this.month == 5) return "May";
    if (this.month == 6) return "June";
    if (this.month == 7) return "July";
    if (this.month == 8) return "August";
    if (this.month == 9) return "September";
    if (this.month == 10) return "October";
    if (this.month == 11) return "November";
    if (this.month == 12) return "December";
    return "this is the end of the world";
  }

  public int getYear() {
    return this.year;
  }

  public void getDate() {
    dayofWeek = cal.get(Calendar.DAY_OF_WEEK);
    dayofMonth = day();
    month = month();
    year = year();
  }

  public void display() {
    //----------------------------- Calendar Setup --------------------------------//
    stroke(0);
    line(0, 50, width, 50);
    line(0, 75, width, 75);
    line(0, 100, width, 100);

    line(0, ((height-100)/5) +100, width, ((height-100)/5) +100);
    line(0, (2*((height-100)/5)) +100, width, (2*((height-100)/5)) +100);
    line(0, (3*((height-100)/5)) +100, width, (3*((height-100)/5)) +100);
    line(0, (4*((height-100)/5)) +100, width, (4*((height-100)/5)) +100);

    line(width/7, 75, width/7, height);
    line(2*(width/7), 75, 2*(width/7), height);
    line(3*(width/7), 75, 3*(width/7), height);
    line(4*(width/7), 75, 4*(width/7), height);
    line(5*(width/7), 75, 5*(width/7), height);
    line(6*(width/7), 75, 6*(width/7), height);

    textAlign(CENTER);
    textSize(20);
    text("Sun", (width/7) - 50, 94);
    text("Mon", 2*(width/7) - 50, 94);
    text("Tues", 3*(width/7) - 50, 94);
    text("Wed", 4*(width/7) - 50, 94);
    text("Thrs", 5*(width/7) - 50, 94);
    text("Fri", 6*(width/7) - 50, 94);
    text("Sat", 7*(width/7) - 50, 94);

    //----------------------------- Date --------------------------------//
    textAlign(CENTER);
    text(getDayofWeek() + " " + getMonth() + " " + getDayofMonth() + ", " + getYear(), width/2, 68);//getDayofWeek()


    textAlign(RIGHT);
    text(getDayofMonth(), getDayofWeekInt()*(width/7) -5, (cal.get(Calendar.WEEK_OF_MONTH)*((height-100)/5)) +70);

    int i = getDayofMonth();
    int t = getDayofWeekInt();
    int n = cal.get(Calendar.WEEK_OF_MONTH);
    while (n > 0 && i > 0) {
      while (t > 0 && i > 0) {
        textAlign(RIGHT);
        text(i, (t*(width/7)) - 5, (n*((height-100)/5))+70);
        i--;
        t--;
      }
      t = 7;
      n--;
    }
    
    int j = getDayofMonth();
    int k = getDayofWeekInt();
    int l = cal.get(Calendar.WEEK_OF_MONTH);
    while (l <= 6 && j <= 30) {
      while (k <=7 && j <= 30) {
        textAlign(RIGHT);
        text(j, k*(width/7) -5, (l*((height-100)/5))+70);
        j++;
        k++;
      }
      k = 1;
      l++;
    }
  }
}