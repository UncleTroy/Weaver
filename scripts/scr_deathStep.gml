///scr_deathStep
if(dying == 1){
    deathTimer++;
    if(deathTimer == 1){
        d = instance_create(x,y,obj_deathEffect);
    }else if(deathTimer >= 20){
        instance_destroy();
    }else{
        if(instance_exists(d)){
            d.x = x;
            d.y = y;
        }
    }
    
    image_alpha = (20-deathTimer)/20;
    sprite_index = stunSprite;
}
