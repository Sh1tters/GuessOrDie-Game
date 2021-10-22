String raw = "";
boolean newKey = false, keysPressed = false, editable = false;

class TextHandler {

  void textfield(float mX, float mY, float x, float y, float w, float h, float tX, float tY) {
    Activetext(mX, mY, x, y, w, h);
    FieldController();

    textFont(TextfieldFont);
    textSize(35);
    fill(0);
    text(raw, x + 35, y + 10, tX, tY);
  }

  void field(String kword) {
    if (newKey) {
      if (raw.length() < 10) {
        raw = raw + kword;
        newKey = false;
      }
    }
  }
  void deleteCharacter() {
    if (newKey) {
      if (raw.length() >= 1) {
        raw = raw.substring(0, raw.length() - 1);
        newKey = false;
      }
    }
  }

  void FieldController() {
    if (keysPressed && editable) {
      tkListener.onPressedKey();
    }
  }

  void Activetext(float mX, float mY, float x, float y, float w, float h) {
    if (isMouseClicked) {
      // check if user pressed on the text field box
      if (mX > x && mX <( x + w) && mY > y && mY < (y + h)) {
        editable = true;
      } else {
        editable = false;
      }
    }
  }
}

void keyPressed() {
  keysPressed = true;
}
