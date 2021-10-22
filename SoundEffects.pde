// Sound effects from https://mixkit.co/free-sound-effects/game/
class SoundEffects {
  
 void onError(){
   if(!onError.isPlaying() && !onClick.isPlaying()){
     onError.play();
   }
 }
 
 void onClick(){
   if(!onError.isPlaying() && !onClick.isPlaying()){
     onClick.play();
   }
 }

  
}
