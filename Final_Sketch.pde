// ----------------------------------- THIS IS AN UNFINISHED PROJECT. 
// MODE CONTROL
boolean interactiveMode = false; 

ArrayList<Week> weeks = new ArrayList<>();
int currentWeek = 0;
int currentDay = 0;

class Day {
  String dateLabel;
  ArrayList<Icon> icons = new ArrayList<>();

  Day(String dateLabel) {
    this.dateLabel = dateLabel;
  }
}

class Week {
  String weekLabel;
  ArrayList<Day> days = new ArrayList<>();

  Week(String label) {
    this.weekLabel = label;
  }
}

// Abstract parent class for icons
abstract class Icon {
  float x, y;
  String label;

  Icon(float x, float y, String label) {
    this.x = x;
    this.y = y;
    this.label = label;
  }

  abstract void display();
}

// Skeleton for all the icons you see on the screen
// ICON CLASSES
class LectureIcon extends Icon {
  LectureIcon(float x, float y, String label) {
    super(x, y, label);
  }
  void display() {
    fill(50, 200, 50);
    rect(x - 40, y - 30, 80, 40);

    fill(255, 220, 180);
    ellipse(x - 20, y, 20, 20);
    fill(0);
    rect(x - 25, y + 10, 10, 20);

    stroke(0);
    strokeWeight(2);
    line(x - 15, y + 20, x + 30, y - 10);

    fill(0);
    textAlign(CENTER);
    textSize(12);
    text(label, x, y + 45);
  }
}

class LatenessIcon extends Icon {
  LatenessIcon(float x, float y) {
    super(x, y, "");
  }

  void display() {
    fill(255, 0, 0);
    noStroke();
    rect(x, y, 15, 15);
  }
}


class TutorialIcon extends Icon {
  TutorialIcon(float x, float y, String label) {
    super(x, y, label);
  }
  void display() {
    fill(150);
    rect(x - 40, y - 10, 80, 20);

    fill(255, 220, 180);
    ellipse(x - 30, y - 20, 20, 20);
    ellipse(x, y - 20, 20, 20);
    ellipse(x + 30, y - 20, 20, 20);

    fill(0);
    textAlign(CENTER);
    textSize(12);
    text(label, x, y + 30);
  }
}

class StepsIcon extends Icon {
  int steps;
  StepsIcon(float x, float y, int steps) {
    super(x, y, "");
    this.steps = steps;
  }
  void display() {
    int bigOvals = steps / 5000;
    int smallOvals = (steps % 5000) / 2500;

    int colorIntensity = 255 - min(steps / 120, 200);
    fill(0, colorIntensity, 0);
    for (int i = 0; i < bigOvals; i++) {
      ellipse(x + i * 30, y, 30, 50);
    }

    fill(0, max(colorIntensity - 50, 0), 0);
    for (int i = 0; i < smallOvals; i++) {
      ellipse(x + (bigOvals + i) * 30, y, 20, 35);
    }

    fill(0);
    textAlign(CENTER);
    textSize(12);
    text("Steps: " + steps, x + (bigOvals + smallOvals) * 15, y + 40);
  }
}

class CostIcon extends Icon {
  String type;
  CostIcon(float x, float y, String label, String type) {
    super(x, y, label);
    this.type = type;
  }
  void display() {
    if (type.equals("coin")) {
      fill(255, 215, 0);
      ellipse(x, y, 40, 40);
      fill(0);
      textAlign(CENTER);
      textSize(14);
      text(label, x, y + 5);
    } else if (type.equals("banknote")) {
      fill(144, 238, 144);
      rect(x - 30, y - 15, 60, 30, 5);
      fill(0);
      textAlign(CENTER);
      textSize(14);
      text(label, x, y + 5);
    }
  }
}

class TableTennisIcon extends Icon {
  TableTennisIcon(float x, float y, String label) {
    super(x, y, label);
  }
  void display() {
    fill(150, 75, 0);
    rect(x - 5, y + 10, 10, 30, 3);
    fill(255, 0, 0);
    ellipse(x, y, 50, 50);

    fill(255, 255, 0);
    ellipse(x + 25, y + 10, 10, 10);

    fill(0);
    textAlign(CENTER);
    textSize(14);
    text(label, x, y + 60);
  }
}

class HockeyIcon extends Icon {
  HockeyIcon(float x, float y, String label) {
    super(x, y, label);
  }
  void display() {
    fill(150, 75, 0);
    rect(x - 3, y - 20, 6, 40);
    rect(x - 3, y + 20, 20, 6);
    fill(255, 0, 0);
    ellipse(x + 30, y + 30, 10, 10);

    fill(0);
    textAlign(CENTER);
    textSize(14);
    text(label, x, y + 60);
  }
}

class BusIcon extends Icon {
  int hours;
  BusIcon(float x, float y, int hours) {
    super(x, y, "");
    this.hours = hours;
  }
  void display() {
    fill(255, 0, 0);
    rect(x - 30, y - 20, 60, 40, 3);

    fill(255);
    for (int i = -25; i <= 15; i += 15) {
      rect(x + i, y - 15, 10, 10);
      rect(x + i, y, 10, 10);
    }

    fill(0);
    ellipse(x - 20, y + 25, 10, 10);
    ellipse(x + 20, y + 25, 10, 10);

    fill(0);
    textAlign(CENTER);
    textSize(10);
    text(hours + "h", x, y + 40);
  }
}

class TrainIcon extends Icon {
  int hours;
  TrainIcon(float x, float y, int hours) {
    super(x, y, "");
    this.hours = hours;
  }
  void display() {
    fill(0, 100, 255);
    rect(x - 25, y - 30, 50, 60, 5);
    fill(150);
    rect(x - 20, y - 25, 40, 40, 3);
    fill(255);
    ellipse(x - 10, y + 20, 10, 10);
    ellipse(x + 10, y + 20, 10, 10);
    fill(100);
    rect(x - 30, y + 25, 60, 5);

    fill(0);
    textAlign(CENTER);
    textSize(10);
    text(hours + "h", x, y + 40);
  }
}
// END OF ICONS


// -----------------------------------
// ORIGINAL (NON-INTERACTIVE) DATA
ArrayList<Icon> originalIcons = new ArrayList<>();

void setup() {
  size(800, 600);
  textFont(createFont("Arial", 16));

  // Original layout - some basic data
  originalIcons.add(new LectureIcon(100, 120, "Lecture"));
  originalIcons.add(new TutorialIcon(200, 120, "Tutorial"));
  originalIcons.add(new StepsIcon(300, 120, 17500));
  originalIcons.add(new CostIcon(500, 120, "£1", "coin"));
  originalIcons.add(new CostIcon(600, 120, "£5", "banknote"));
  originalIcons.add(new TableTennisIcon(100, 200, "Table tennis 1h"));
  originalIcons.add(new HockeyIcon(200, 200, "Hockey 1h"));
  originalIcons.add(new BusIcon(100, 300, 1));
  originalIcons.add(new TrainIcon(200, 300, 1));

  initData(); 
}

void draw() {
  background(255);

  // Reset transformations and modes before drawing.
  resetMatrix();
  rectMode(CORNER);
  ellipseMode(CENTER);
  textAlign(LEFT, BASELINE);
  textSize(16);

  if (!interactiveMode) {
    drawOriginalLayout();
  } else {
    drawInteractiveMode();
  }
}


void drawOriginalLayout() {
  textAlign(CENTER);
  textSize(24);
  fill(0);
  text("Dear Data Diary", width / 2, 40);
  textSize(18);
  text("Legend", width / 2, 70);

  for (Icon icon : originalIcons) {
    icon.display();
  }

  textSize(16);
  text("Big Oval: 5k steps | Small Oval: 2.5k steps", 430, 195);
  textSize(13);
  text("Red box next to lecture/tutorial means I was late.", 160, 73);

  textSize(16);
  text("I either travel by bus or by train, the times will be shown also", 240, 370);
  
   textSize(14);
  text("I wanted to explore how my weeks differed from the first week of September (start of university), October and November", 400, 420);

  text("Press 'm' to return to week view (toggle)", 240, 500);
  
    text("Please note this is unfinished due to the complexity.", 240, 600);


  fill(255, 0, 0);  //red box
  rect(130, 90, 15, 15);
  
  
}



// Scene switching
void drawInteractiveMode() {
  drawInteractiveLegend();

  Week w = weeks.get(currentWeek);
  Day d = w.days.get(currentDay);

  // Draw diamond in the center without rotation
  float cx = width/2;
  float cy = height/2;
  float halfSize = 50; 

  fill(230);
  stroke(0);
  strokeWeight(2);
  rectMode(CORNER); 

  beginShape();
  vertex(cx, cy - halfSize);    // top
  vertex(cx + halfSize, cy);    // right
  vertex(cx, cy + halfSize);    // bottom
  vertex(cx - halfSize, cy);    // left
  endShape(CLOSE);

  
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(14);
  text(d.dateLabel, cx, cy);

  
  for (Icon ic : d.icons) {
    ic.display();
  }

  fill(0);
  textAlign(CENTER);
  textSize(20);
  text("Current: " + w.weekLabel + ", Day: " + (currentDay+1), width/2, 45);
}

void drawInteractiveLegend() {
  fill(0);
  textAlign(LEFT, TOP);
  textSize(16);
  text("Legend (Interactive Mode)", 50, 50);

  textSize(12);
  text("Press RIGHT/LEFT arrows to change days", 50, 70);
  text("Press 'n' and 'p' to change weeks", 50, 90);
  text("Press 'm' to return to original view (toggle)", 50, 110);
}


// Making it interactive
void initData() {
  // WEEK 1
  Week w1 = new Week("Week 1 of September");
  for (int i = 1; i <= 5; i++) {
    Day day = new Day("Sep Day " + i);
    if (i == 1) {
      day.icons.add(new LectureIcon(300, 250, "Lecture"));
      day.icons.add(new TutorialIcon(500,250,"Tutorial"));
      day.icons.add(new StepsIcon(250,375,20650));
      day.icons.add(new BusIcon(650,450,1));
      day.icons.add(new LatenessIcon(330, 220));
      day.icons.add(new TrainIcon(730,450,2));
      day.icons.add(new CostIcon(500,350,"£1","coin"));
      day.icons.add(new CostIcon(550,350,"£5","banknote"));

      
      fill(255,0,0);
      noStroke();
      rect(700, 200, 15, 15);
      
      
    } else if (i == 2) {
      day.icons.add(new LectureIcon(300, 250, "Lecture"));
      day.icons.add(new TutorialIcon(500,250,"Tutorial"));
      day.icons.add(new StepsIcon(250,375,20650));
      day.icons.add(new BusIcon(650,450,1));
      day.icons.add(new LatenessIcon(330, 220));
      day.icons.add(new TrainIcon(730,450,2));
      day.icons.add(new CostIcon(500,350,"£5","banknote"));
      day.icons.add(new CostIcon(550,350,"£5","banknote"));

    } else {

    }
    w1.days.add(day);
  }

  // WEEK 2
  Week w2 = new Week("Week 1 of October");
  for (int i = 1; i <= 5; i++) {
    Day day = new Day("Oct Day " + i);

  }

  // WEEK 3
  Week w3 = new Week("Week 1 of November");
  for (int i = 1; i <= 5; i++) {
    Day day = new Day("Nov Day " + i);
    day.icons.add(new TutorialIcon(0,0,"Tutorial"));
    day.icons.add(new CostIcon(0,0,"£1","coin"));
    day.icons.add(new CostIcon(0,0,"£5","banknote"));
    day.icons.add(new StepsIcon(0,0,10000*i));
    w3.days.add(day);
  }

  weeks.add(w1);
  weeks.add(w2);
  weeks.add(w3);
}


// KEYS
void keyPressed() {
  if (!interactiveMode) {
    if (key == 'm') {
      interactiveMode = true;
    }
  } else {
    if (keyCode == RIGHT) {
      currentDay++;
      if (currentDay >= weeks.get(currentWeek).days.size()) {
        currentDay = 0;
      }
    } else if (keyCode == LEFT) {
      currentDay--;
      if (currentDay < 0) {
        currentDay = weeks.get(currentWeek).days.size()-1;
      }
    } else if (key == 'n') {
      currentWeek = (currentWeek + 1) % weeks.size();
      currentDay = 0;
    } else if (key == 'p') {
      currentWeek = (currentWeek - 1 + weeks.size()) % weeks.size();
      currentDay = 0;
    } else if (key == 'm') {
      // Toggle back to original mode if desired
      interactiveMode = false;
    }
  }
}
