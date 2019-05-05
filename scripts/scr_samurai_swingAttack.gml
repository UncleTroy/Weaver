///scr_samurai_swingAttack()
if(attacking == 0){
    if(instance_exists(enemy)){
        mask_index = spr_samurai_hitbox1;
        if(place_meeting(x,y,enemy)){
            attacking = 1;
        }
        mask_index = sprite_index;
        stunSpriteRemember = sprite_index;
    }
}
if(attacking == 1){
    sprite_index = spr_samurai_attack;
    aCount++;
    switch(aCount){
        case 1:
        spr=1;
        break;
        case 2:
        spr=2;
        break;
        case 3:
        spr=3;
        break;
        case 4:
        spr=4;
        break;
        case 5:
        spr=5;
        break;
        case 7:
        spr=6;
        break;
        case 9:
        spr=7;
        break;
        case 11:
        spr=8;
        break;
        case 13:
        spr=9;
        break;
        case 16:
        spr=10;
        break;
        case 19:
        spr=11;
        break;
        case 22:
        spr=12;
        break;
        case 25:
        spr=13;
        break;
        case 28:
        spr=14;
        case 29:
        case 30:
        mask_index = spr_samurai_hitbox1;
        scr_hitTarget(enemy);
        mask_index = sprite_index;
        break;
        case 31:
        spr=15;
        break;
        case 33:
        spr=16;
        break;
        case 35:
        spr=17;
        break;
        case 37:
        spr=18;
        break;
        case 39:
        mask_index = spr_samurai_hitbox1;
        if(place_meeting(x,y,enemy)){
            aCount = 9;
        }else{
            spr = 6;
        }
        mask_index = sprite_index;
        break;
        case 41:
        spr=5;
        break;
        case 43:
        spr=4;
        break;
        case 45:
        spr=3;
        break;
        case 47:
        spr=2;
        break;
        case 49:
        spr=1;
        break;
        case 51:
        attacking = 0;
        aCount = 0;
        sprite_index = stunSpriteRemember;
        break;
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
