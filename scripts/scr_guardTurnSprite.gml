///scr_guardTurnSprite()
turn++;
if(turn >= 8){
    spr++;
    if(spr >= 2){
        turnSequence = 0;
        standing = 0;
    }
    turn = 0;
}
if(dir == -1){
    sprite_index = spr_guard_turn_left;
}else{
    sprite_index = spr_guard_turn_right;
}
