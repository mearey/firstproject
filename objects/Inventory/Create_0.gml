/// @description Insert description here
// You can write your code in this editor
items = [];

function addItem(item) {
	array_push(items, item);
	xpos = 50;
	instance_destroy(invisButton);
	for (var i=0;i<array_length_1d(items);i++) {
		btn = instance_create_depth(xpos,650,0,invisButton);
		btn.xx = xpos/2.33333;
		btn.yy = 650/2.33333;
		btn.setItem(items[i]);
		xpos += 64;
	}
}

function removeItem(item) {
	for (var i=0;i<array_length_1d(items);i++) {
		if (item == items[i]) {
			array_delete(items,i,1);	
		}
	}
}