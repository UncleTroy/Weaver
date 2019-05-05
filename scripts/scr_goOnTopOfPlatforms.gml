///scr_goOnTopOfPlatforms()
mask_index = spr_goUpPlatformsHB;
if(place_meeting(x,y,obj_platform)){
    var c = 0;
    var exitLoop = 0;
    do{
        mask_index = sprite_index;
        if(!place_meeting(x,y-1,obj_wall)){
            y--;
        }else{
            exitLoop = 1;
        }
        mask_index = spr_goUpPlatformsHB;
        c++;
    }until(!place_meeting(x,y,obj_platform) || exitLoop || c > 1000);
}
mask_index = sprite_index;
