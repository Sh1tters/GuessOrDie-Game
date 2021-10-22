float x;

class GameStateMenu {

  void startup(String username) {
    background(Menu);
    showUsername(username);
    menuHandler.Actions();
  }


  void showUsername(String username) {
    stroke(8);
    x = 1632;
    fill(255);
    textSize(20);
    textFont(UsernameFont);
    for (int i = 0; i < username.length(); i++) {
      x = x - 2 ;
    }
    // capitalize the first letter of username string
    username = username.substring(0, 1).toUpperCase() + username.substring(1);
    text(username, x, 200);
  }
}


class menuHandler {

  void Actions() {

    if (onButtonClickEvent(mouseX, mouseY, 748, 353, 425, 91)) {
      sound.onClick();
      gamestate = 3;
    }
    if (onButtonClickEvent(mouseX, mouseY, 748, 504, 425, 91)) {
      sound.onClick();
      //  gamestate = 5;
    }
    if (onButtonClickEvent(mouseX, mouseY, 748, 655, 425, 91)) {
      sound.onClick();
      // gamestate = 6;
    }

    if (onButtonHoverEvent(mouseX, mouseY, 748, 353, 425, 91)) {
      image(singleplayer, 748, 353);
    }
    if (onButtonHoverEvent(mouseX, mouseY, 748, 504, 425, 91)) {
      image(settings, 748, 504);
    }
    if (onButtonHoverEvent(mouseX, mouseY, 748, 655, 425, 91)) {
      image(credits, 748, 655);
    }
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
