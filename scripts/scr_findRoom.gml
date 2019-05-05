///findRoom(x,y)
var roomIFound = noone;
var finalRoom = noone;
var c = 0;
if(instance_exists(obj_room)){
    repeat(instance_number(obj_room)){
        roomIFound = instance_find(obj_room,c);
        if(argument0 >= roomIFound.x1 && argument0 <= roomIFound.x2 && argument1 >= roomIFound.y1 && argument1 <= roomIFound.y2){
            finalRoom = roomIFound;
        }
        c++;
    }
}

return finalRoom;
