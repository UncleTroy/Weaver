///scr_jump(speed);
if(argument0 < 0){
    var num = argument0*-1;
    var going = 1;
}else{
    var num = argument0;
    var going = -1;
}
repeat(num){
    var m = place_meeting(x,y+1*going,obj_wall);
    mask_index = spr_player_lowerHitbox;
    m += (going == 1 && (place_meeting(x,y+1,obj_platform) && !S));
    mask_index = sprite_index;

    if(m == 0){
        y+=1*going;
        yOffset+=1*going;
    }else if(going == -1){ // hit ceiling
        if(swingJumpMomentumY == 0 && tJump <= jump5){// perhaps just momentum
            tJump = jump5;
        }
    }else if(going == 1){ // hit ground
        jump = -1;
        tJump = 0;
    }
}
