///HitWindow()

if(numberOfPlanksShow >= 0) {
    numberOfHits++;
    if(numberOfPlanks == 1 && numberOfHits > 2) {
        numberOfPlanksShow--;
    } 
    else if (numberOfPlanks == 2 && numberOfHits > 2) {
        numberOfPlanksShow--;
    } else if (numberOfPlanks == 3 && numberOfHits > 3) {
        numberOfPlanksShow--;
    }
    
    audio_play_sound(sndWindowHit, 1, false);
    
    originalX = x;
    originalY = y;
    isShaking = true;
    alarm[11] = shakeTime;
}
