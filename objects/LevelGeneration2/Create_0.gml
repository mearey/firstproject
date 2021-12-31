/// @description Insert description here
// You can write your code in this editor
man.startRoom();

var tm = layer_tilemap_get_id("colision");
var tmTiles = layer_tilemap_get_id("Tiles");

for (var i=0;i<room_width/TILE_SIZE;i++) {
	for (var j=0;j<room_height/TILE_SIZE;j++) {
		tilemap_set_at_pixel(tm, tilemap_get_at_pixel(tmTiles,1,1),i*TILE_SIZE,j*TILE_SIZE);
	}
}

var dir = 0;

x = man.x
y = man.y

randomise();

repeat (1000)
{
	dir = choose(0,1,2,3) * 90;
	
	tilemap_set_at_pixel(tm, tilemap_get_at_pixel(tmTiles,1,1),x,y);
	tilemap_set_at_pixel(tm, 0,x,y);
	
	x += lengthdir_x(TILE_SIZE, dir);
	y += lengthdir_y(TILE_SIZE, dir);
	
}

function isSurrounded(tm, i, j, tiledata) {
	if tilemap_get_at_pixel(tm,i*TILE_SIZE,(j+1)*TILE_SIZE) != tiledata and tilemap_get_at_pixel(tm,i*TILE_SIZE,(j-1)*TILE_SIZE) != tiledata and tilemap_get_at_pixel(tm,(i+1)*TILE_SIZE,(j)*TILE_SIZE) != tiledata and tilemap_get_at_pixel(tm,(i-1)*TILE_SIZE,(j)*TILE_SIZE) != tiledata and tilemap_get_at_pixel(tm,(i-1)*TILE_SIZE,(j-1)*TILE_SIZE) != tiledata and tilemap_get_at_pixel(tm,(i+1)*TILE_SIZE,(j+1)*TILE_SIZE) != tiledata and tilemap_get_at_pixel(tm,(i-1)*TILE_SIZE,(j+1)*TILE_SIZE) != tiledata  and tilemap_get_at_pixel(tm,(i+1)*TILE_SIZE,(j-1)*TILE_SIZE) != tiledata {
		return true;
	}
	return false;
}

for (var i=0;i<room_width/TILE_SIZE - 1;i++) {
	for (var j=0;j<room_height/TILE_SIZE - 1;j++) {
		if tilemap_get_at_pixel(tm,i*TILE_SIZE,(j+1)*TILE_SIZE) == 0 and tilemap_get_at_pixel(tm,i*TILE_SIZE,(j)*TILE_SIZE) == tilemap_get_at_pixel(tmTiles,1,1) and tilemap_get_at_pixel(tm,i*TILE_SIZE,(j-1)*TILE_SIZE) != 0 {
			if i > 1 and j > 1 {
				tilemap_set_at_pixel(tm, tilemap_get_at_pixel(tmTiles,1,17),i*TILE_SIZE,j*TILE_SIZE);
			}
		}
		if isSurrounded(tm,i,j,0) {
			tilemap_set_at_pixel(tm, tilemap_get_at_pixel(tmTiles,1,33),i*TILE_SIZE,j*TILE_SIZE);
		}
	}
}

//post tile editing
for (var i=0;i<room_width/TILE_SIZE;i++) {
	for (var j=0;j<room_height/TILE_SIZE;j++) {
		if i > 1 and j > 1 {
			tiledata = tilemap_get_at_pixel(tmTiles,1,17);
			if tilemap_get_at_pixel(tm,i*TILE_SIZE,(j+1)*TILE_SIZE) == tiledata and tilemap_get_at_pixel(tm,i*TILE_SIZE,(j)*TILE_SIZE) == tilemap_get_at_pixel(tmTiles,1,33) {
				tilemap_set_at_pixel(tm, tilemap_get_at_pixel(tmTiles,1,1),i*TILE_SIZE,j*TILE_SIZE);
			}
		}
	}
}

for (var i=0;i<room_width/TILE_SIZE;i++) {
	for (var j=0;j<room_height/TILE_SIZE;j++) {
		if i > 1 and j > 1 {
			if tilemap_get_at_pixel(tm,i*TILE_SIZE,(j)*TILE_SIZE) == tilemap_get_at_pixel(tmTiles,1,1) {
				if tilemap_get_at_pixel(tm,(i+1)*TILE_SIZE,(j)*TILE_SIZE) == 0 and tilemap_get_at_pixel(tm,(i-1)*TILE_SIZE,(j)*TILE_SIZE) == 0 {
					tilemap_set_at_pixel(tm, tilemap_get_at_pixel(tmTiles,33,1), i*TILE_SIZE,(j)*TILE_SIZE);
				}
				if tilemap_get_at_pixel(tm,(i)*TILE_SIZE,(j+1)*TILE_SIZE) == tilemap_get_at_pixel(tmTiles,1,17) and tilemap_get_at_pixel(tm,(i)*TILE_SIZE,(j-1)*TILE_SIZE) == 0 {
					tilemap_set_at_pixel(tm, tilemap_get_at_pixel(tmTiles,17,1), i*TILE_SIZE,(j)*TILE_SIZE);
				}
				if tilemap_get_at_pixel(tm,(i+1)*TILE_SIZE,(j)*TILE_SIZE) != 0 and tilemap_get_at_pixel(tm,(i-1)*TILE_SIZE,(j)*TILE_SIZE) == 0 {
					tilemap_set_at_pixel(tm, tilemap_get_at_pixel(tmTiles,49,1), i*TILE_SIZE,(j)*TILE_SIZE);
				}
				if tilemap_get_at_pixel(tm,(i-1)*TILE_SIZE,(j)*TILE_SIZE) != 0 and tilemap_get_at_pixel(tm,(i+1)*TILE_SIZE,(j)*TILE_SIZE) == 0 {
					tilemap_set_at_pixel(tm, tilemap_get_at_pixel(tmTiles,65,1), i*TILE_SIZE,(j)*TILE_SIZE);
				}
				if (tilemap_get_at_pixel(tm,(i)*TILE_SIZE,(j+1)*TILE_SIZE) == tilemap_get_at_pixel(tmTiles,1,17) and tilemap_get_at_pixel(tm,(i)*TILE_SIZE,(j-1)*TILE_SIZE) == tilemap_get_at_pixel(tmTiles,1,33)) or (tilemap_get_at_pixel(tm,(i)*TILE_SIZE,(j+1)*TILE_SIZE) == tilemap_get_at_pixel(tmTiles,1,17) and tilemap_get_at_pixel(tm,(i)*TILE_SIZE,(j-1)*TILE_SIZE) == tilemap_get_at_pixel(tmTiles,1,1)) {
					tilemap_set_at_pixel(tm, tilemap_get_at_pixel(tmTiles,81,1), i*TILE_SIZE,(j)*TILE_SIZE);
				}
				if tilemap_get_at_pixel(tm,(i+1)*TILE_SIZE,(j)*TILE_SIZE) == tilemap_get_at_pixel(tmTiles,1,17) {
					tilemap_set_at_pixel(tm, tilemap_get_at_pixel(tmTiles,65,1), i*TILE_SIZE,(j)*TILE_SIZE);
				}
				if tilemap_get_at_pixel(tm,(i-1)*TILE_SIZE,(j)*TILE_SIZE) == tilemap_get_at_pixel(tmTiles,1,17) {
					tilemap_set_at_pixel(tm, tilemap_get_at_pixel(tmTiles,49,1), i*TILE_SIZE,(j)*TILE_SIZE);
				}
				if tilemap_get_at_pixel(tm,(i)*TILE_SIZE,(j+1)*TILE_SIZE) == tilemap_get_at_pixel(tmTiles,1,33) and tilemap_get_at_pixel(tm,(i)*TILE_SIZE,(j-1)*TILE_SIZE) == 0 {
					tilemap_set_at_pixel(tm, tilemap_get_at_pixel(tmTiles,97,1), i*TILE_SIZE,(j)*TILE_SIZE);
				}
				if tilemap_get_at_pixel(tm,(i)*TILE_SIZE,(j+1)*TILE_SIZE) != 0 and tilemap_get_at_pixel(tm,(i)*TILE_SIZE,(j-1)*TILE_SIZE) == 0 {
					tilemap_set_at_pixel(tm, tilemap_get_at_pixel(tmTiles,97,1), i*TILE_SIZE,(j)*TILE_SIZE);
				}
				if tilemap_get_at_pixel(tm,(i+1)*TILE_SIZE,(j)*TILE_SIZE) != 0 and tilemap_get_at_pixel(tm,(i-1)*TILE_SIZE,(j)*TILE_SIZE) != 0 and tilemap_get_at_pixel(tm,(i)*TILE_SIZE,(j+1)*TILE_SIZE) == 0 and tilemap_get_at_pixel(tm,(i)*TILE_SIZE,(j-1)*TILE_SIZE) == 0 {
					tilemap_set_at_pixel(tm, tilemap_get_at_pixel(tmTiles,17,1), i*TILE_SIZE,(j)*TILE_SIZE);
				}
			}
		}
	}
}

for (var i=0;i<room_width/TILE_SIZE;i++) {
	for (var j=0;j<room_height/TILE_SIZE;j++) {
		if i > 1 and j > 1 {
			if tilemap_get_at_pixel(tm,i*TILE_SIZE,(j)*TILE_SIZE) == tilemap_get_at_pixel(tmTiles,1,1) {
				tilemap_set_at_pixel(tm, tilemap_get_at_pixel(tmTiles,1,33), i*TILE_SIZE,(j)*TILE_SIZE);
			}
		}
	}
}

for (var i=0;i<room_width/TILE_SIZE;i++) {
	for (var j=0;j<room_height/TILE_SIZE;j++) {
		if i > 1 and j > 1 {
			if tilemap_get_at_pixel(tm,i*TILE_SIZE,(j)*TILE_SIZE) == tilemap_get_at_pixel(tmTiles,97,1) {
				if tilemap_get_at_pixel(tm,(i-1)*TILE_SIZE,(j)*TILE_SIZE) == 0 {
					tilemap_set_at_pixel(tm, tilemap_get_at_pixel(tmTiles,113,1), i*TILE_SIZE,(j)*TILE_SIZE);
				}
				if tilemap_get_at_pixel(tm,(i+1)*TILE_SIZE,(j)*TILE_SIZE) == 0 {
					tilemap_set_at_pixel(tm, tilemap_get_at_pixel(tmTiles,129,1), i*TILE_SIZE,(j)*TILE_SIZE);
				}
				if tilemap_get_at_pixel(tm,(i+1)*TILE_SIZE,(j)*TILE_SIZE) == 0 and tilemap_get_at_pixel(tm,(i-1)*TILE_SIZE,(j)*TILE_SIZE) == 0 {
					tilemap_set_at_pixel(tm, tilemap_get_at_pixel(tmTiles,145,1), i*TILE_SIZE,(j)*TILE_SIZE);
				}
			}
		}
	}
}
//blue corner
for (var i=0;i<room_width/TILE_SIZE;i++) {
	for (var j=0;j<room_height/TILE_SIZE;j++) {
		if i > 1 and j > 1 {
			if tilemap_get_at_pixel(tm,i*TILE_SIZE,(j)*TILE_SIZE) == tilemap_get_at_pixel(tmTiles,49,1) {
				if tilemap_get_at_pixel(tm,(i+1)*TILE_SIZE,(j)*TILE_SIZE) != tilemap_get_at_pixel(tmTiles,1,33) {
					tilemap_set_at_pixel(tm, tilemap_get_at_pixel(tmTiles,161,1), i*TILE_SIZE,(j)*TILE_SIZE);
				}
				if tilemap_get_at_pixel(tm,(i)*TILE_SIZE,(j+1)*TILE_SIZE) == 0 and tilemap_get_at_pixel(tm,(i)*TILE_SIZE,(j-1)*TILE_SIZE) == 0 {
					tilemap_set_at_pixel(tm, tilemap_get_at_pixel(tmTiles,209,1), i*TILE_SIZE,(j)*TILE_SIZE);
				}
			}
			if tilemap_get_at_pixel(tm,i*TILE_SIZE,(j)*TILE_SIZE) == tilemap_get_at_pixel(tmTiles,65,1) {
				if tilemap_get_at_pixel(tm,(i-1)*TILE_SIZE,(j)*TILE_SIZE) != tilemap_get_at_pixel(tmTiles,1,33) {
					tilemap_set_at_pixel(tm, tilemap_get_at_pixel(tmTiles,177,1), i*TILE_SIZE,(j)*TILE_SIZE);
				}
				if tilemap_get_at_pixel(tm,(i)*TILE_SIZE,(j+1)*TILE_SIZE) == 0 and tilemap_get_at_pixel(tm,(i)*TILE_SIZE,(j-1)*TILE_SIZE) == 0 {
					tilemap_set_at_pixel(tm, tilemap_get_at_pixel(tmTiles,193,1), i*TILE_SIZE,(j)*TILE_SIZE);
				}
			}
		}
	} 
}

for (var i=0;i<room_width/TILE_SIZE;i++) {
	for (var j=0;j<room_height/TILE_SIZE;j++) {
		if i > 1 and j > 1 {
			if tilemap_get_at_pixel(tm,i*TILE_SIZE,(j)*TILE_SIZE) == tilemap_get_at_pixel(tmTiles,1,17) {
				if tilemap_get_at_pixel(tm,(i-1)*TILE_SIZE,(j)*TILE_SIZE) == 0 and tilemap_get_at_pixel(tm,(i+1)*TILE_SIZE,(j)*TILE_SIZE) != 0 {
					tilemap_set_at_pixel(tm,tilemap_get_at_pixel(tmTiles,1,81),i*TILE_SIZE,(j)*TILE_SIZE);
				} else if tilemap_get_at_pixel(tm,(i+1)*TILE_SIZE,(j)*TILE_SIZE) == 0 and tilemap_get_at_pixel(tm,(i-1)*TILE_SIZE,(j)*TILE_SIZE) != 0 {
					tilemap_set_at_pixel(tm,tilemap_get_at_pixel(tmTiles,1,65),i*TILE_SIZE,(j)*TILE_SIZE);
				} else if tilemap_get_at_pixel(tm,(i-1)*TILE_SIZE,(j)*TILE_SIZE) != 0 and tilemap_get_at_pixel(tm,(i+1)*TILE_SIZE,(j)*TILE_SIZE) != 0 {
					tilemap_set_at_pixel(tm,tilemap_get_at_pixel(tmTiles,1,49),i*TILE_SIZE,(j)*TILE_SIZE);
				}
			}
		}
	} 
}

//enemy generation
for (var i=0;i<room_width/TILE_SIZE;i++) {
	for (var j=0;j<room_height/TILE_SIZE;j++) {
		if i > 1 and j > 1 {
			if tilemap_get_at_pixel(tm,i*TILE_SIZE,(j)*TILE_SIZE) == 0 {
				rand = random_range(0,100);
				if rand < 2 { 
					if point_distance(man.x,man.y,i*TILE_SIZE,(j)*TILE_SIZE) > 150 {
						instance_create_depth(i*TILE_SIZE,(j)*TILE_SIZE,0,stasisEnemy);	
					}
				} else if rand > 99 {
					if point_distance(man.x,man.y,i*TILE_SIZE,(j)*TILE_SIZE) > 150 {
						instance_create_depth(i*TILE_SIZE,(j)*TILE_SIZE,0,stasisEnemybig);
					}
				}
			}
		}
	}
}

for (var i=0;i<room_width/TILE_SIZE;i++) {
	for (var j=0;j<room_height/TILE_SIZE;j++) {
		if i > 1 and j > 1 {
			if tilemap_get_at_pixel(tm,(i+1)*TILE_SIZE,(j)*TILE_SIZE) == 0 and tilemap_get_at_pixel(tm,(i-1)*TILE_SIZE,(j)*TILE_SIZE) == 0 and tilemap_get_at_pixel(tm,(i)*TILE_SIZE,(j+1)*TILE_SIZE) == 0 and tilemap_get_at_pixel(tm,(i)*TILE_SIZE,(j-1)*TILE_SIZE) == 0 {
				tilemap_set_at_pixel(tm, 0,i*TILE_SIZE,j*TILE_SIZE);
			}
		}
	}
}

function spawnItem(percentChance, Item,tm) {
	if man.gunpoolContains(Item) {
		shopx = random_range(5,room_width/TILE_SIZE);
		shopy = random_range(5,room_height/TILE_SIZE);
		while tilemap_get_at_pixel(tm,shopx*TILE_SIZE,shopy*TILE_SIZE) != 0 {
			shopx = random_range(5,room_width/TILE_SIZE);
			shopy = random_range(5,room_height/TILE_SIZE);
		}
		if (irandom(100) < percentChance) {
			instance_create_depth((shopx)*TILE_SIZE,(shopy)*TILE_SIZE,10,Item);
		}
	}
}

function spawnEntity(percentChance, Item,tm) {
	shopx = random_range(5,room_width/TILE_SIZE);
	shopy = random_range(5,room_height/TILE_SIZE);
	while tilemap_get_at_pixel(tm,shopx*TILE_SIZE,shopy*TILE_SIZE) != 0 {
		shopx = random_range(5,room_width/TILE_SIZE);
		shopy = random_range(5,room_height/TILE_SIZE);
	}
	if (irandom(100) < percentChance) {
		instance_create_depth((shopx)*TILE_SIZE,(shopy)*TILE_SIZE,10,Item);
	}
}

spawnEntity(30,Hp,tm);
spawnEntity(30,RATE,tm);
spawnEntity(30,DMG,tm);
spawnEntity(30,ACC,tm);
spawnItem(13,BubbleGunpickup,tm);
spawnEntity(100,Lighting,tm);
spawnEntity(60,Exit,tm);

man.setTilemap();