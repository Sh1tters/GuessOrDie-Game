// Sound effects from https://mixkit.co/free-sound-effects/game/
class SoundEffects {
  
 void onError(){
   if(!onError.isPlaying() && !onClick.isPlaying() && !countdown.isPlaying() && !ticktock.isPlaying()){
     onError.play();
   }
 }
 
 void onClick(){
   if(!onError.isPlaying() && !onClick.isPlaying() && !countdown.isPlaying() && !ticktock.isPlaying()){
     onClick.play();
   }
 }
 
 void onTick(){
   if(!onError.isPlaying() && !onClick.isPlaying() && !countdown.isPlaying() && !ticktock.isPlaying()){
     if(countDownTimerActive){
       gamemusic.amp(gamemusicAMP % 2);
     countdown.play(); 
     } else countdown.stop();
   }
 }
 
 void onTickTock(){
   if(!onError.isPlaying() && !onClick.isPlaying() && !countdown.isPlaying() && !ticktock.isPlaying()){
     if(ActiveGame){
     ticktock.play(); 
     } else ticktock.stop();
   }
 }

  
}
