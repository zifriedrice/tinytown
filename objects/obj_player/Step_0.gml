/// @description player movement

//Calculate movement
vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp) * walkSpeed);

// if idle
if (vx == 0 && vy == 0) {
	// do nothing for now
}

// if moving
if (vx != 0 || vy !=0) {
	x += vx;
	y += vy;
}
