/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_black);
draw_set_halign(fa_center);
if instance_exists(man) {
	if point_distance(x,y,man.x,man.y) < 50 {
		draw_text_transformed(x+8,y-15, "PRESS E TO",0.4,0.4,0);
		draw_text_transformed(x+8,y-10, "ENTER SHOP",0.4,0.4,0);
	}
}