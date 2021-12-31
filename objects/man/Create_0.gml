/// @description Insert description here
// You can write your code in this editor
timer = 0;
move_speed = 1;
global.tilemap = layer_tilemap_get_id("colision");
maxhp = 4;
pc = (health/maxhp) * 100;
health = 4;
points = 500;
damage = 1;
accuracy = 0.5;
firerate = 1.2;
basedamage = 1;
baseaccuracy = 0.5;
basefirerate = 1.2;
healtimer = 200;
weapon = pointer;
weaponinstance = instance_create_depth(x,y,0,pointer);
global.room_from = 0;
global.gunpool = [BubbleGunpickup,pointerdoublepickup,swordpickup,rifle1pickup];
function gunpoolContains(item) {
	for (var i = array_length(global.gunpool)-1; i >= 0; i--) {
		if global.gunpool[i] == item {
			return true;
		}
	}
	return false;
}

function removeGunFromPool(item) {
	for (var i = array_length(global.gunpool)-1; i >= 0; i--) {
		if global.gunpool[i] == item {
			show_debug_message("gunremoved")
			array_delete(global.gunpool,i,1);
		}
	}
}

function equip(item) {
	instance_destroy(weapon);
	weapon = item;
	weaponinstance = instance_create_depth(x,y,0,weapon);
	calculateStats();
}

function calculateStats() {
	damage = basedamage*weaponinstance.damage;
	accuracy = baseaccuracy*weaponinstance.accuracy;
	firerate = basefirerate*weaponinstance.firerate;
}

function setTilemap() {
	global.tilemap = layer_tilemap_get_id("colision");
}

function startRoom() { 
	x = room_width/2;
	y = room_height/2;
	
}

function returnToMain() {
	global.room_from = Random;
	room_goto_previous();
}