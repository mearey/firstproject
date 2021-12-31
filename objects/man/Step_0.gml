/// @description Insert description here
// You can write your code in this editor

if health < maxhp {
	healtimer--;
} else {
	healtimer = 400;
}
if healtimer <= 0 {
	health += 0.1;
	pc = (health/maxhp) * 100;
	draw_healthbar(camera.x-10, camera.y-13, camera.x+10, camera.y-10,pc,c_black,c_red,c_lime,0,true,true);
}

var key_right, key_left, key_down, key_up;

key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_down = keyboard_check(ord("S"));
key_up = keyboard_check(ord("W"));

// Object Position and Direction
var xpos, ypos, hspd, vspd;
hspd = move_speed;
vspd = move_speed;
xpos = key_right - key_left ;
ypos = key_down - key_up;


// Check if moving
if key_left || key_right || key_down || key_up {
	sprite_index = walk;
} else {
	sprite_index = theGuy;
}
var bbox_side;

// Move the object
if (xpos>0) bbox_side = bbox_right; else bbox_side = bbox_left;
if tilemap_get_at_pixel(global.tilemap, bbox_side + xpos, bbox_top) != 0 or tilemap_get_at_pixel(global.tilemap, bbox_side + xpos, bbox_bottom) != 0 {
	if (xpos>0) x = x - (x mod 16) + 14 - (bbox_right-x);
	if (xpos<0) x = x - (x mod 16) + 1 - (bbox_left-x);
}

if (ypos>0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if tilemap_get_at_pixel(global.tilemap, bbox_left, bbox_side + ypos) != 0 or tilemap_get_at_pixel(global.tilemap, bbox_right, bbox_side + ypos) != 0{
	if (ypos>0) y = y - (y mod 16) + 14 - (bbox_bottom-y);
	if (ypos<0) y = y - (y mod 16) + 1 - (bbox_top-y);
}

x += hspd*xpos;
y += vspd*ypos;

// Keep Object within the map boundries
x=clamp(x,0,room_width-sprite_width);
y=clamp(y,0,room_height-sprite_height);

if mouse_check_button(mb_left) {
	timer++;
	
	if timer >= 20/firerate {
		if weapon == sword {
			
		}
		if weapon == pointer {
			instance_create_depth(x, y, 0, bullet);	
		}
		if weapon == pointerdouble {
			instance_create_depth(x,y,0,bullet);
			instance_create_depth(x,y,0,bullet);
			instance_create_depth(x,y,0,bullet);
			instance_create_depth(x,y,0,bullet);
			instance_create_depth(x,y,0,bullet);
			instance_create_depth(x,y,0,bullet);
		}
		if weapon == BubbleGun {
			instance_create_depth(x,y,0,bullet);
		}
		if weapon == rifle1 {
			instance_create_depth(x,y,0,smallshot);
		}
		timer = 0;
	}
}

if health <= 0 {
	room_goto(Room1);
}