///scr_guardWalkSprite()
if(jump == 0){
    tWalk++;
    if(tWalk >= 4){
        spr++;
        if(spr >= 5){
            spr = 1;
        }
        tWalk = 0;
    }
    sprite_index = spr_guard_walk;
}
