/// AddFrankPart(frankPart)

var frankPart = argument0;

var frankPartAdded = false;
var xPosition = 0;
var yPosition = 0;

switch(frankPart.object_index)
{
    case FrankHead:
        hasHead = true;
        frankPartAdded = true;
        with(frankPart) 
        {
            yPosition = FrankBody.y;
            xPosition = FrankBody.x + 56;
            visible = true;
        }
        break;
    case FrankLeftLeg:
        hasLeftLeg = true;
        frankPartAdded = true;
        with(frankPart) 
        {
            yPosition = FrankBody.y + 10;
            xPosition = FrankBody.x - 70;
            visible = true;
        }
        break;
    case FrankRightLeg:
        hasRightLeg = true;
        frankPartAdded = true;
        with(frankPart) 
        {
            yPosition = FrankBody.y - 12;
            xPosition = FrankBody.x - 68;
            visible = true;
        }
        break;
    case FrankRightArm:
        hasRithtArm = true;
        frankPartAdded = true;
        with(frankPart) 
        {
            yPosition = FrankBody.y - 32;
            xPosition = FrankBody.x - 24;
            visible = true;
        }
        break;
    case FrankLeftArm:
        hasLeftArm = true;
        frankPartAdded = true;
        with(frankPart) 
        {
            yPosition = FrankBody.y + 30;
            xPosition = FrankBody.x - 20;
            visible = true;
        }
        break;
}

if(frankPartAdded) {
    with(FrankLifeGUI)
    {
        lifes = maxLifes;
    }
    
    with(frankPart) 
    {
        y = yPosition;
        x = xPosition;
        visible = true;
        image_angle = 270;
    }
}
return frankPartAdded;
