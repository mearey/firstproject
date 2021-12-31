/// @description Insert description here
// You can write your code in this editor
health -= 1;
pc = (health/maxhp) * 100;
draw_healthbar(camera.x-10, camera.y-13, camera.x+10, camera.y-10,pc,c_black,c_red,c_lime,0,true,true);