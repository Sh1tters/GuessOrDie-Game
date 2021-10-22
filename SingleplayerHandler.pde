String mode = "N/A";

class SingleplayerHandler {

  void main() {
    modes.main();
  }
}



class Modes {
  boolean clickable = false;
  void main() {
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
      if (onButtonClickEvent(mouseX, mouseY, 146, 867.78, 337.48, 72.22)) {
        sound.onClick();
        clickable = false;
        gamestate = 2;
      }
    }
    if (onButtonHoverEvent(mouseX, mouseY, 748, 411, 425, 91)) image(easy, 748, 411);
    if (onButtonHoverEvent(mouseX, mouseY, 748, 583, 425, 91)) image(medium, 748, 583);
    if (onButtonHoverEvent(mouseX, mouseY, 748, 755, 425, 91)) image(hard, 748, 755);
    if (onButtonHoverEvent(mouseX, mouseY, 146, 867.78, 337.48, 72.22)) image(back, 146, 867.78);
  }

  void easy() {
    mode = "easy";
    gamestate = 10;
  }

  void medium() {
    mode = "medium";
  }

  void hard() {
    mode = "hard";
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
