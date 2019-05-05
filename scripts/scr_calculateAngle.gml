///scr_calculateAngle()
if(xSpeed == 0){
        if(ySpeed < 0){
            rot = 90;
        }else{
            rot = 270;
        }
    }else{
        rot = arctan(ySpeed/xSpeed)*180/pi;
    }
    var d = 0;
    if(xSpeed > 0){
        d = 180;
    }
    rot = -1*(rot-90)+d;
