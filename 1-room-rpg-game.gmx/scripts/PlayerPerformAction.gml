//PlayerPerformAction

if(!AddPlankToWindowIfPossible())
{
    if(!AddFrankPartIfPossible())
    {
        if(!UsePotionIfPossible())
        {
            PickItemIfInRange();
        }
    }
}
