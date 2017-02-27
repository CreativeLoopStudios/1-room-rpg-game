///CheckFrankDrop
var frankPart = noone;

with(Wave)
{
    waveCountEnemiesKilled++;
    
    if(waveNumber == 1) 
    {
        if(frankPartOneCountFirstWave == waveCountEnemiesKilled) 
        {
           frankPart =  frankPartOneFirstWave;
        }
        else if(frankPartTwoCountFirstWave == waveCountEnemiesKilled) 
        {
           frankPart =  frankPartTwoFirstWave;
        }
    }   
    else if(waveNumber == 2) 
    {
        if(frankPartOneCountSecondWave == waveCountEnemiesKilled) 
        {
           frankPart =  frankPartOneSecondWave;
        }
        else if(frankPartTwoCountSecondWave == waveCountEnemiesKilled) 
        {
           frankPart =  frankPartTwoSecondWave;
        }
    }
    else if(waveNumber == 3) 
    {
        if(frankPartCountThirdWave == waveCountEnemiesKilled) 
        {
           frankPart =  frankPartThirdWave;
        }
    }
}

return frankPart;
