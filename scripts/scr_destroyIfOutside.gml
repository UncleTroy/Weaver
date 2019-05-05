///scr_destroyIfOutside()
if(instance_exists(obj_coolCamera)){
    if(x < obj_coolCamera.cViewX1-sprite_width/2 || x > obj_coolCamera.cViewX2+sprite_width/2 || y < obj_coolCamera.cViewY1-sprite_height/2 || y > obj_coolCamera.cViewY2+sprite_height/2){
        instance_destroy();
    }
}
