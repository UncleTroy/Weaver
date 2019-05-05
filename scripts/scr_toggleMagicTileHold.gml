///scr_toggleMagicTileHold();
if(keyboard_check(ord('J'))){
    if(global.spellCast[magicTile] == 0){
        global.spellCast[magicTile] = 1;
    }else{
        global.spellCast[magicTile] = 0;
    }
}
