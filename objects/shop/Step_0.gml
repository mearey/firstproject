/// @description Insert description here
// You can write your code in this editor
if instance_exists(man) {
	if point_distance(x,y,man.x,man.y) < 50 {
		if (keyboard_check_pressed(ord("E")) and !global.inshop) {
			global.inshop = true;
			create = true;
		}
	}
}

if (keyboard_check_pressed(vk_escape)) {
	global.inshop = false;
}

if global.inshop {
	if create {  	
		instance_deactivate_all(1);
		instance_create_depth(x+16,y,10,DMGBTN);
		instance_create_depth(x+16,y+16,10,ACCBTN);
		instance_create_depth(x+16,y+32,10,RATEBTN);
	}
	create = false;
} else {
	instance_activate_all();
}