/// @description Insert description here
// You can write your code in this editor
if !global.inshop {
	instance_destroy(self);
}

if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, self) {
	instance_activate_object(man);
	if (man.points >= cost) {
		man.points -= cost;
		man.basedamage += 0.2;
		man.calculateStats();
	}
	instance_deactivate_object(man);	
}