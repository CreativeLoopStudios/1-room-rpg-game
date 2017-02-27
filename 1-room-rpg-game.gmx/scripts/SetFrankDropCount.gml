///SetFrankDropCount()

var wave1MaxEnemies = timeOfWave/timeBetweenMonstersWave1;
var wave2MaxEnemies = timeOfWave/timeBetweenMonstersWave2;

frankPartOneCountFirstWave = irandom_range(1, wave1MaxEnemies / 2);
frankPartTwoCountFirstWave = irandom_range((wave1MaxEnemies / 2) + 1, wave1MaxEnemies);
frankPartOneCountSecondWave = irandom_range(1, wave2MaxEnemies / 2);
frankPartTwoCountSecondWave = irandom_range((wave2MaxEnemies / 2) + 1, wave2MaxEnemies);

