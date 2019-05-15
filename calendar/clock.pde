class Clock {
  private int second;
  private int minute;
  private int hour;

  Clock() {
    second = second();
    minute = minute();
    hour = hour();
  }

  public int getSecond() {
    return this.second;
  }

  public int getMinute() {
    return this.minute;
  }

  public int getHour() {
    return this.hour;
  }

  public String amPm() {
    if (hour() < 12 || hour() == 24) return "AM";
    return "PM";
  }

  public void getTime() {
    second = second();
    minute = minute();
    hour = hour();
  }

  public void display() {
    fill(0);
    textSize(25);
    textAlign(CENTER);
    if (hour() > 12) this.hour = getHour() - 12;
    if (minute() < 10 && second() < 10) {
      text(getHour() + ":0" + getMinute() + ":0" + getSecond() + " " + amPm(), width/2, 20);
    } else if (minute() < 10) {
      text(getHour() + ":0" + getMinute() + ":" + getSecond() + " " + amPm(), width/2, 20);
    } else if (second() < 10) {
      text(getHour() + ":" + getMinute() + ":0" + getSecond() + " " + amPm(), width/2, 20);
    } else {
      text(getHour() + ":" + getMinute() + ":" + getSecond() + " " + amPm(), width/2, 20);
    }
  }
}
