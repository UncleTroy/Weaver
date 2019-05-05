///scr_playerWalkSprite()
if(jump == 0){
    tWalk++;
    if(tWalk >= 6){
        spr++;
        if(spr >= 4){
            spr = 0;
        }
        tWalk = 0;
    }
    sprite_index = playerWalkSprite;
}
