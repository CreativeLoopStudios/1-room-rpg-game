///SetFrankDropPart()

var frankParts = ds_list_create();

ds_list_add(frankParts, FrankLeftLeg);
ds_list_add(frankParts, FrankRightLeg);
ds_list_add(frankParts, FrankRightArm);
ds_list_add(frankParts, FrankLeftArm);
ds_list_shuffle(frankParts);

frankPartOneFirstWave = frankParts[|0];
frankPartTwoFirstWave = frankParts[|1];
frankPartOneSecondWave = frankParts[|2];
frankPartOneSecondWave = frankParts[|3];

ds_list_destroy(frankParts);
