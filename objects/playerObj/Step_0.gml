 var kLeft = -keyboard_check(ord("A")); 
 var kRight = keyboard_check(ord("D")); 
 var kJump = keyboard_check_pressed(ord("W"));
 
move = kLeft + kRight; 
hsp = move * moveSpeed; 
if (vsp < 10) { vsp += grav; };

if (place_meeting(x, y + 1, grasstile)) { vsp = kJump * -jumpSpeed }

if (place_meeting(x + hsp, y, grasstile)) { 
	while (!place_meeting(x + sign(hsp), y, grasstile)) { 
		x += sign(hsp); 
	} hsp = 0;
} x += hsp;

if (place_meeting(x, y + vsp, grasstile)) { 
	while (!place_meeting(x, y + sign(vsp), grasstile)) { y += sign(vsp); } vsp = 0; } y += vsp;
	
draw_healthbar(100+x, 50+y, 100+x+global.inkleft, 200+y, global.inkleft, c_white, c_red, c_lime, 0, true, true)