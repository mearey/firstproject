// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function InitialiseParticles(){
	
	global.p_system = part_system_create_layer("particles", false);
	global.particle1 = part_type_create();
	part_type_size(global.particle1,0.5,1,0.1,0);
	part_type_color1(global.particle1,c_red);
	part_type_speed(global.particle1,1,3,-0.01,0);            //The particles speed//part_type_orientation(global.particle1,0,0,0,0,true);        //This changes the rotation of the particle
	part_type_blend(global.particle1,0);                         //This is the blend mode, either additive or normal
	part_type_life(global.particle1,10,15);      
	part_type_alpha2(global.particle1, 1,0);
	global.particle2 = part_type_create();
	part_type_size(global.particle2,0.5,1,0.1,0);
	part_type_speed(global.particle2,1,3,-0.01,0);            //The particles speed//part_type_orientation(global.particle1,0,0,0,0,true);        //This changes the rotation of the particle
	part_type_blend(global.particle2,0);                         //This is the blend mode, either additive or normal
	part_type_life(global.particle2,10,15);      
	part_type_color1(global.particle2,c_black);
	part_type_alpha2(global.particle2, 1,0);

	global.deadbullet = part_type_create();
	part_type_sprite(global.deadbullet,enemybulletS, 0, 0,0 );
	part_type_speed(global.deadbullet,0.6,1.5,-0.01,0);            //The particles speed//part_type_orientation(global.particle1,0,0,0,0,true);        //This changes the rotation of the particle                       //This is the blend mode, either additive or normal
	part_type_life(global.deadbullet,10,15);      
	part_type_alpha2(global.deadbullet, 1,0);

	global.deadbulletbig = part_type_create();
	part_type_sprite(global.deadbulletbig,enemybulletbigS, 0, 0,0 );
	part_type_speed(global.deadbulletbig,0.6,1.5,-0.01,0);            //The particles speed//part_type_orientation(global.particle1,0,0,0,0,true);        //This changes the rotation of the particle                       //This is the blend mode, either additive or normal
	part_type_life(global.deadbulletbig,10,15);      
	part_type_alpha2(global.deadbulletbig, 1,0);

	global.deadbulletplayer = part_type_create();
	part_type_sprite(global.deadbulletplayer,bulletS, 0, 0,0 );
	part_type_speed(global.deadbulletplayer,0.6,1.5,-0.01,0);            //The particles speed//part_type_orientation(global.particle1,0,0,0,0,true);        //This changes the rotation of the particle                       //This is the blend mode, either additive or normal
	part_type_life(global.deadbulletplayer,10,15);      
	part_type_alpha2(global.deadbulletplayer, 1,0);
	
	global.deadbulletbubble = part_type_create();
	part_type_sprite(global.deadbulletbubble,BubbleS, 0, 0,0 );
	part_type_speed(global.deadbulletbubble,0.6,1.5,-0.01,0);            //The particles speed//part_type_orientation(global.particle1,0,0,0,0,true);        //This changes the rotation of the particle                       //This is the blend mode, either additive or normal
	part_type_life(global.deadbulletbubble,10,15);      
	part_type_alpha2(global.deadbulletbubble, 1,0);

	global.pointsmall = part_type_create();
	part_type_sprite(global.pointsmall,pointparticlesmal, 0, 0,0 );
	part_type_size(global.pointsmall,2,2,0,0);
	part_type_speed(global.pointsmall,0.2,1,-0.01,0);            //The particles speed//part_type_orientation(global.particle1,0,0,0,0,true);        //This changes the rotation of the particle                       //This is the blend mode, either additive or normal
	part_type_life(global.pointsmall,10,15);      
	part_type_alpha2(global.pointsmall, 1,0);
	
	global.pointbig = part_type_create();
	part_type_sprite(global.pointbig,pointparticlebig, 1, 0,0 );
	part_type_size(global.pointbig,2,2,0,0);
	part_type_speed(global.pointbig,0.2,1,-0.01,0);            //The particles speed//part_type_orientation(global.particle1,0,0,0,0,true);        //This changes the rotation of the particle                       //This is the blend mode, either additive or normal
	part_type_life(global.pointbig,10,15);      
	part_type_alpha2(global.pointbig, 1,0);
	
	global.deadbulletsmall = part_type_create();
	part_type_sprite(global.deadbulletsmall,smallshotS, 1, 0,0 );
	part_type_speed(global.deadbulletsmall,0.2,1,-0.01,0);            //The particles speed//part_type_orientation(global.particle1,0,0,0,0,true);        //This changes the rotation of the particle                       //This is the blend mode, either additive or normal
	part_type_life(global.deadbulletsmall,10,15);      
	part_type_alpha2(global.deadbulletsmall, 1,0);

}