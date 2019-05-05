///scr_enemyHitStep();
if(!dying){
    if(iFrames > 0){
        iFrames--;
    }else{
        h = instance_place(x,y,obj_spear);
        if(h != noone && h.owner != noone){
            var xSpd = h.owner.xSpeed * h.owner.dir;
            var ySpd = h.owner.ySpeed;
            var dmg = h.owner.damage;
            
            if(h.owner.knockback){
                xVel = round(xSpd * (dmg/5 + 1)/3);
                yVel = round((ySpd * (dmg/5 + 1))/4);
                if((abs(xVel) + abs(yVel))/2 < 3){
                    xVel = 0;
                    yVel = 0;
                }else{
                    attacking = 0;
                    aCount = 0;
                    enemy = obj_player;
                }
            }
            if(h.owner.stun){
                stunFrames = round(abs(xSpd) + abs(ySpd) + dmg/2);
            }
            if(h.owner.iFrames){
                iFrames = 10;
            }
            
            hp-=dmg;
            if(hp <= 0){
                dying = 1;
            }
            
            stunSpriteRemember = sprite_index;
            sprite_index = stunSprite; // be stunned
            
            d = instance_create(h.x,h.y,obj_hitEffect);
            d.size = dmg/10;
        }
    }
    
    if(stunFrames > 0){
        stunFrames--;
        if(stunFrames == 0){
            sprite_index = stunSpriteRemember; // break out of stun
        }
    }
}
if(xVel != 0){
    if(!place_meeting(x+xVel,y,obj_wall)){
        x+=xVel;
    }
    if(xVel < 0){
        xVel++;
    }else{
        xVel--;
    }
}
if(yVel != 0){
    if(!place_meeting(x,y+yVel,obj_wall)){
        y+=yVel;
    }
    if(yVel < 0){
        yVel++;
    }else{
        yVel--;
    }
}

