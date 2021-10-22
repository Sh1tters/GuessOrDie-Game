class ErrorList {

  boolean InvalidUsername(String username) {
    if (username.length() < 3) {
      sound.onError();
      // show min length error
      textFont(TextErrorFont);
      textSize(20);
      fill(#FF0000);
      text("Username is too short! username > 3", 664, 541);
      return false;
    }
    if (username.length() > 8) {
      sound.onError();
      // show max length error
      textFont(TextErrorFont);
      textSize(20);
      fill(#FF0000);
      text("Username is too long! username < 8", 664, 541);
      return false;
    }
    return true;
  }
}
