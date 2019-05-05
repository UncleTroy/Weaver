///scr_toggleMagicTilePress();
if(keyboard_check_pressed(ord('J'))){
    if(global.spellCast[magicTile] == 0){
        global.spellCast[magicTile] = 1;
    }else{
        global.spellCast[magicTile] = 0;
    }
}
