/// AddPlank()
var plankAdded = false;

if(numberOfPlanksShow < MAX_PLANKS)
{
    plankAdded = true;
    numberOfPlanksShow++;
    numberOfPlanks = numberOfPlanksShow;
    numberOfHits = 0;
}

return plankAdded;
