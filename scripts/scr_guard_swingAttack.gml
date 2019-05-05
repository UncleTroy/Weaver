///scr_guard_swingAttack()
if(stunFrames == 0 && !dying){
    if(attacking == 0){
        if(instance_exists(enemy)){
            mask_index = spr_guard_hitbox1;
            if(place_meeting(x,y,enemy)){
                attacking = 1;
            }
            mask_index = sprite_index;
            stunSpriteRemember = sprite_index;
        }
    }
    if(attacking == 1){
        sprite_index = spr_guard_attack;
        aCount++;
        switch(aCount){
            case 1:
            spr=1;
            break;
            case 4:
            spr=2;
            break;
            case 7:
            spr=3;
            break;
            case 12:
            spr=4;
            break;
            case 16:
            spr=5;
            break;
            case 20:
            spr=6;
            break;
            case 27:
            spr=7;
            break;
            case 33:
            spr=8;
            //sound effect
            case 34:
            case 35:
            case 36:
            mask_index = spr_guard_hitbox1;
            scr_hitTarget(enemy);
            mask_index = sprite_index;
            break;
            case 37:
            spr=9;
            break;
            case 44:
            spr=10;
            break;
            case 50:
            spr=11;
            break;
            case 55:
            mask_index = spr_guard_hitbox1;
            if(place_meeting(x,y,enemy)){
                aCount = 11;
            }else{
                attacking = 0;
                aCount = 0;
                sprite_index = stunSpriteRemember;
            }
            mask_index = sprite_index;
        }
        
        //but what if I fall??
        if(!place_meeting(x,y+1,obj_wall) && !place_meeting(x,y+1,obj_wall)){
            jump = 1;
            if(tJump < jump6){
                tJump = jump6;
            }
            attacking = 0;
            aCount = 0;
            sprite_index = stunSpriteRemember;
        }
    }
}
