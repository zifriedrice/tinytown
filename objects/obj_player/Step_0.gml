///@description movement

//intialize movement as zero so that you're not stuck with 1-1 neutralizing your walk speed
moveRight = 0;
moveLeft = 0;
moveDown = 0;
moveUp = 0;

//check keys for movement
if ( keyboard_check(vk_right) || keyboard_check(ord("D"))) {
	moveRight = 1;
}
if ( keyboard_check(vk_left) || keyboard_check(ord("A"))) {
	moveLeft = 1;
}
if ( keyboard_check(vk_down) || keyboard_check(ord("S"))) {
	moveDown = 1;
}
if ( keyboard_check(vk_up) || keyboard_check(ord("W"))) {
	moveUp = 1;
}

//calculate movement
vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp) * walkSpeed);

//if idle
if (vx == 0 && vy == 0) {
	// change idle sprite based on last direction
	switch dir {
		case 0: sprite_index = spr_player_idle_right; break;
		case 1: sprite_index = spr_player_idle_up; break;
		case 2: sprite_index = spr_player_idle_left; break;
		case 3: sprite_index = spr_player_idle_down; break;
	}
}

// if moving
if (vx != 0 || vy !=0) {
	x += vx;
	y += vy;
	
	//change walking sprite based on direction
	//right
	if (vx > 0) {
		sprite_index = spr_player_walk_right;
		dir = 0;
	}
	//left
	if (vx < 0) {
		sprite_index = spr_player_walk_left
		dir = 2;
	}
	//down
	if (vy > 0) {
		sprite_index = spr_player_walk_down
		dir = 3;
	}	
	//up
	if (vy < 0) {
		sprite_index = spr_player_walk_up
		dir = 1;
	}
}
