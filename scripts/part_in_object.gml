/// Check the if one object1 inside object2
var  sx1, sy1, sx2, sy2, dx1, dy1, dx2, dy2, sx, sy, sh, sw;

drag_object   = argument0;
static_object = argument1;

var  sx1, sy1, sx2, sy2, dx1, dy1, dx2, dy2, sx, sy, sh, sw;
    // get part full coordinates
    //with( object_get_sprite(drag_object) )
    with( drag_object )    
    {
        sx = sprite_xoffset; 
        sy = sprite_yoffset;
        sh = sprite_height;
        sw = sprite_width;

        sx1 = mouse_x - sx;
        sy1 = mouse_y - sy;
        sx2 = mouse_x - sx + sw;
        sy2 = mouse_y - sy + sh;
    }
    
    // get editor coordinates
    with( static_object )
    {
        sx = sprite_xoffset; 
        sy = sprite_yoffset;
        sh = sprite_height;
        sw = sprite_width;

        dx1 = x - sx;
        dy1 = y - sy;
        dx2 = x - sx + sw;
        dy2 = y - sy + sh;
    }
            
return rectangle_in_rectangle(sx1, sy1, sx2, sy2, dx1, dy1, dx2, dy2);
