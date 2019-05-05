///scr_playerMove(dir);
dir = argument0;
//lingeringVelocity = spd*dir;
repeat(spd){
    if(!place_meeting(x+dir,y,obj_wall)){// || (!place_meeting(x,y+1,obj_wall) && !place_meeting(x+dir,y+1,obj_wall))){
        x+=dir;
        xOffset+=dir;
    }
}
