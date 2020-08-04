/// @description 
surface_set_target(global.refl_surf);

//Draw water
var cam_x = camera_get_view_x(view_camera);
var cam_y = camera_get_view_y(view_camera);

//Objects
for(var i=0; i<ds_list_size(global.water_insts); i++){
	with(global.water_insts[|i]){
		var xx = x;
		var yy = y;
		
		if (global.camera_used){
			xx -= cam_x;
			yy -= cam_y;
		}
		
		draw_sprite_ext(sprite_index, image_index, xx, yy, image_xscale, image_yscale,
			image_angle, image_blend, image_alpha);
	}
}

//Tile
if (global.water_detection) shader_set(sh_land_detect);

draw_tilemap(water_tilemap, 0 - (cam_x*global.camera_used), 0 - (cam_y*global.camera_used));

if (global.water_detection) shader_reset();

//Refl
gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_src_alpha);

//Draw priorty
var prior = ds_priority_create();

for(var i=0; i<ds_list_size(global.refl_insts); i++){
	var inst = global.refl_insts[|i];
	if (instance_exists(inst)) ds_priority_add(prior, inst, inst.depth);
}

//Shader
shader_set(sh_refl);

shader_set_uniform_f(uni_time, current_time);
		
shader_set_uniform_f(uni_slow, 100/global.wave_speed);
shader_set_uniform_f(uni_amount, 4 * global.wave_size);
shader_set_uniform_f(uni_waves, 20 * global.wave_frequency);
shader_set_uniform_f(uni_y_amount, 2 * global.vertical_wave_size);
shader_set_uniform_f(uni_y_waves, 20 * global.vertical_wave_frequency);
		
shader_set_uniform_f(uni_detect, global.water_detection);
shader_set_uniform_f(uni_blur, global.water_blur);
shader_set_uniform_f(uni_blur_power, global.water_blur_power);

//Loop
while(ds_priority_size(prior)>0){
	var inst = ds_priority_delete_max(prior);
	inst._offset = global.refl_offsets[| ds_list_find_index(global.refl_insts, inst)];
	
	with(inst){
		//position
		var xx = x;
		var yy = y;
		
		if (global.camera_used){
			xx -= cam_x;
			yy -= cam_y;
		}
		
		var sh = sprite_height - sprite_yoffset;
		
		yy += (sh-_offset)*2;
		
		//draw
		var uvs = sprite_get_uvs(sprite_index, image_index);
		var tex = sprite_get_texture(sprite_index, image_index);
		
		shader_set_uniform_f(other.uni_uvs, uvs[0], uvs[1], uvs[2]-uvs[0], uvs[3]-uvs[1]);
		shader_set_uniform_f(other.uni_texel, texture_get_texel_width(tex), texture_get_texel_height(tex));
		
		shader_set_uniform_f(other.uni_offset, _offset/10);
		
		//dest
		//var texS = surface_get_texture(global.refl_surf);
		//var surfW = surface_get_width(global.refl_surf);
		//var surfH = surface_get_height(global.refl_surf);
		
		//texture_set_stage(other.uni_dest_surf, texS);
		//shader_set_uniform_f(other.uni_dest_pos, xx - sprite_xoffset, yy - sh);
		//shader_set_uniform_f(other.uni_spr_size, sprite_width, sprite_height);
		//shader_set_uniform_f(other.uni_surf_size, surfW, surfH);
		
		draw_sprite_ext(sprite_index, image_index, xx, yy, image_xscale, -image_yscale,
			image_angle, global.water_blend, image_alpha);
			
	}
}

shader_reset();

ds_priority_destroy(prior);

gpu_set_blendmode(bm_normal);

surface_reset_target();

//Draw surface
draw_surface(global.refl_surf, cam_x*global.camera_used, cam_y*global.camera_used);