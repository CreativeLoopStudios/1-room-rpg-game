/// AddPlank()
var plankAdded = false;

if(numberOfPlanksShow < MAX_PLANKS)
{
    plankAdded = true;
    numberOfPlanksShow++;
    numberOfPlanks = numberOfPlanksShow;
    numberOfHits = 0;
    
    show_debug_message("numberOfPlanksShow:" + string(numberOfPlanksShow));
}

return plankAdded;
