PImage startgame, stateEnterName, stateEnterNameButton, Menu, credits, settings, singleplayer, easy, medium, hard, modestate;
class Data {
  
 void onLoadData(){
   startgame = loadImage("background.png");
   stateEnterName = loadImage("state2.png");
   stateEnterNameButton = loadImage("state2Button.png");
   Menu = loadImage("Menu.png");
   credits = loadImage("credits.png");
   settings = loadImage("settings.png");
   singleplayer = loadImage("singleplayer.png");
   easy = loadImage("Easy.png");
   medium = loadImage("Medium.png");
   hard = loadImage("Hard.png");
   modestate = loadImage("Modes.png");
 }
  
}
