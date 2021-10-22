import java.util.concurrent.*;

import static java.util.concurrent.TimeUnit.SECONDS;

final ScheduledExecutorService scheduler = Executors.newScheduledThreadPool(1);

boolean ActiveGame = false;
boolean third = false, second = false, first = false, end = false, countDownTimerActive = false;

class Singleplayer {


  int countdownStarter = 4;

  void startGame() {
    if (!ActiveGame) {
      background(game);
      bc.main();
      Actions();
    } else if (ActiveGame) {
      background(game);
      bc.main();
      Actions();
      c.main();
      sound.onTickTock();
    }
  }


  void Actions() {
    if (third)             image(three, 827, 220);
    if (second)             image(two, 827, 220);
    if (first)             image(one, 827, 220);
    if (end)             image(go, 544, 258);

    if (onButtonClickEvent(mouseX, mouseY, 123, 921, 177, 38)) {
      modes.clickable = false;
      sound.onClick();
      gamestate = 2;
      ActiveGame = false;
      countDownTimerActive = false;
    }

    if (onButtonHoverEvent(mouseX, mouseY, 123, 921, 177, 38)) image(leave, 123, 921);


    // countdown to start
    if (!ActiveGame) {
      countDownTimerActive = true;
      //Start count down
      final Runnable runnable = new Runnable() {

        public void run() {
          if (countdownStarter < 4) sound.onTick();
          if (countdownStarter == 3) {
            third = true;
            second = false;
            first = false;
            end = false;
          }
          if (countdownStarter == 2) {
            third = false;
            second = true;
            first = false;
            end = false;
          }
          if (countdownStarter == 1) {
            third = false;
            second = false;
            first = true;
            end = false;
          }
          delay(1000);
          countdownStarter--;


          if (countdownStarter == 0) {
            third = false;
            second = false;
            first = false;
            end = true;
            delay(1000);
            countdown.stop();
            end = false;
            ActiveGame = true;
            countDownTimerActive = false;
          }
        }
      };
      scheduler.scheduleAtFixedRate(runnable, 0, 1, SECONDS);
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

class Broadcast {
  int x = 200, xnew, size, y, j;
  String[] broadcastMessages = {"Created by github.com/Sh1tters"};

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
