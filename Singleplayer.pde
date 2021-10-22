boolean ActiveGame = false;

class Singleplayer {

  void startGame() {
    ActiveGame = true;
    background(game);
    Actions();
    bc.main();
    c.main();
  }


  void Actions() {
    if (onButtonClickEvent(mouseX, mouseY, 123, 921, 177, 38)) {
      ActiveGame = false;
      modes.clickable = false;
      sound.onClick();
      gamestate = 2;
    }

    if (onButtonHoverEvent(mouseX, mouseY, 123, 921, 177, 38)) image(leave, 123, 921);
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

class Broadcast {
  int x = 200, xnew, size, y, j;
  String[] broadcastMessages = {"Created by github.com/Sh1tters", "Guess Or Die BETA", "Crappy Entertainment"};

  Broadcast() {
    x = 1450;
    size = 20;
    y = 1038;
    j = 0;
  }

  void main() {
    textSize(size);
    text(broadcastMessages[j], x, y);
    x -= 2;
    if (x < 172) {
      j++;
      x = 1450;
      if (j >= broadcastMessages.length) j = 0;
    }
  }
}
