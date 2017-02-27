/// DoDamageToChaseObject()

if(chaseObject == Player)
{
    with(PlayerLifeGUI)
    {
        lifes -= 1;
    }
}
else if(chaseObject == MonsterTable)
{
    with(FrankLifeGUI)
    {
        lifes -= 1;
    }
}
