final float BUTTON_SIZE = 50;
float X, Y;
float colour1 = 255;
float colour2 = 128;
int counter = 5;
String text;
boolean buttonPressed;


void setup() {
  size(500, 500);
  background(0);
  X = random(0, (width-BUTTON_SIZE));
  Y = random(0, (height-BUTTON_SIZE));
}

void draw() {
  background(0);
  clickedOnButton();
  clickedOffButton();
  printCounter();
}

void clickedOnButton() {
  if (mousePressed && mouseX>=X && mouseX<(X+BUTTON_SIZE) && mouseY>=Y && mouseY<(Y+BUTTON_SIZE)) {
    buttonPressed = true;
    fill(colour2);
  } else {
    fill(colour1);
  }
}

void clickedOffButton() {
  if (buttonPressed && !mousePressed) {
    counter -= 1;
    buttonPressed = false;
  }
}

void printCounter() {
  rect(X, Y, BUTTON_SIZE, BUTTON_SIZE);
  if (counter!=0) {
    fill(255, 0, 0);
    text(counter, X+(BUTTON_SIZE/2)-3, Y+(BUTTON_SIZE/2)+5);
  } else {
    fill(255, 0, 0);
    text("STOP", X+(BUTTON_SIZE/2)-15, Y+(BUTTON_SIZE/2)+5);
  }
  if (counter<=5) {
    if (mousePressed && mouseX>=X && mouseX<(X+BUTTON_SIZE) && mouseY>=Y && mouseY<(Y+BUTTON_SIZE)) {
      X = random(0, (width-BUTTON_SIZE));
      Y = random(0, (height-BUTTON_SIZE));
    }
  }
}
