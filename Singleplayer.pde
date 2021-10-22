String mode = "N/A";

class Singleplayer {

  void main() {
    modes.main();
    if (gamestate == 10); //d
    if (gamestate == 11); //d
    if (gamestate == 12); //d
  }
}



class Modes {
  boolean clickable = false;
  void main() {
    println(clickable);
    background(modestate);
    Actions();
  }

  void Actions() {
    if (isMouseClicked) {
      if (onButtonClickEvent(mouseX, mouseY, 748, 411, 425, 91)) {
        if (clickable) {
          sound.onClick();
          easy();
        }
      }
      if (onButtonClickEvent(mouseX, mouseY, 748, 583, 425, 91)) {
        if (clickable) {
          sound.onClick();
          medium();
        }
      }
      if (onButtonClickEvent(mouseX, mouseY, 748, 755, 425, 91)) {
        if (clickable) {
          sound.onClick();
          hard();
        }
      }
    }
    if (onButtonHoverEvent(mouseX, mouseY, 748, 411, 425, 91)) image(easy, 748, 411);
    if (onButtonHoverEvent(mouseX, mouseY, 748, 583, 425, 91)) image(medium, 748, 583);
    if (onButtonHoverEvent(mouseX, mouseY, 748, 755, 425, 91)) image(hard, 748, 755);
  }

  void easy() {
    mode = "easy";
  //  gamestate = 10;
  }

  void medium() {
    mode = "medium";
  //  gamestate = 11;
  }

  void hard() {
    mode = "hard";
  //  gamestate = 12;
  }

  boolean onButtonHoverEvent(float px, float py, float rx, float ry, float rw, float rh) {
    if (px > rx && px < rx + rw) {
      if (py > ry && py < ry + rh) {
        return true;
      }
    }
    return false;
  }

  boolean onButtonClickEvent(float px, float py, float rx, float ry, float rw, float rh) {
    if (isMouseClicked) {
      if (px > rx && px < rx + rw) {
        if (py > ry && py < ry + rh) {
          return true;
        }
      }
    }
    return false;
  }
}

void mouseMoved() {
  if (gamestate == 3) modes.clickable = true;
}
