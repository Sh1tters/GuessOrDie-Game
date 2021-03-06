import processing.sound.*;
SoundFile onClick, onError, gamemusic, countdown, ticktock;

float gamemusicAMP = 0.2;

int gamestate;
String username;
boolean isMouseClicked = false;

Fonts fonts = new Fonts();
idleHandler idle = new idleHandler();
selectNameHandler nameHandler = new selectNameHandler();
Data data = new Data();
ErrorList error = new ErrorList();
TextHandler tHandler = new TextHandler();
TextKeyListener tkListener = new TextKeyListener();
GameStateMenu menu = new GameStateMenu();
menuHandler menuHandler = new menuHandler();
SoundEffects sound = new SoundEffects();
Modes modes = new Modes();
SingleplayerHandler spHandler = new SingleplayerHandler();
Singleplayer sp = new Singleplayer();
Broadcast bc = new Broadcast();
Clock c = new Clock();



void setup() {
  fullScreen();
  fonts.main();
  data.onLoadData();

  onClick = new SoundFile(this, "onClickSound.wav");
  onError = new SoundFile(this, "onErrorSound.wav");
  gamemusic = new SoundFile(this, "gamemusic.wav");
  countdown = new SoundFile(this, "onCountDownSound.wav");
  ticktock = new SoundFile(this, "onTickTockTimerSound.wav");

  gamemusic.play();
  gamemusic.loop();
  gamemusic.amp(gamemusicAMP);
}

void draw() {
  GameStateHandler();
  isMouseClicked = false;
}

void GameStateHandler() {
  if (gamestate == 0) idle();
  if (gamestate == 1) selectName();
  if (gamestate == 2) menu.startup(username);
  if (gamestate == 3) spHandler.main();
  if (gamestate == 10) sp.startGame();
}

void selectName() {
  background(stateEnterName);
  nameHandler.Actions();
}

class selectNameHandler {

  void Actions() {

    // enable text handler here
    tHandler.textfield(mouseX, mouseY, 638, 435, 644, 70, 644, 70);

    if (onContinueHoverEvent(mouseX, mouseY, 822, 607, 276, 75)) image(stateEnterNameButton, 822, 607);
    if (onContinueClickEvent(mouseX, mouseY, 822, 607, 276, 75)) {
      username = raw;

      // check username for errors
      if (!error.InvalidUsername(username)) {
        // error found
        // display error
      } else {
        sound.onClick();
        gamestate = 2;
      }
    } else if (keyPressed && key == ENTER) {
      username = raw;

      // check username for errors
      if (!error.InvalidUsername(username)) {
        // error found
        // display error
      } else {
        sound.onClick();
        gamestate = 2;
      }
    }
  }

  boolean onContinueHoverEvent(float px, float py, float rx, float ry, float rw, float rh) {
    if (px > rx && px < rx + rw) {
      if (py > ry && py < ry + rh) {
        return true;
      }
    }
    return false;
  }

  boolean onContinueClickEvent(float px, float py, float rx, float ry, float rw, float rh) {
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

void idle() {
  background(startgame);
  idle.Actions();
}


class idleHandler {

  void Actions() {
    if (onClickEvent(mouseX, mouseY, 728, 505, 464, 99)) {
      sound.onClick();
      gamestate = 1;
    }
  }

  boolean onClickEvent(float px, float py, float rx, float ry, float rw, float rh) {
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

void mousePressed() {
  isMouseClicked = true;
}
