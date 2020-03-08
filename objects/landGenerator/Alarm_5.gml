 
var pos;
var temp_x=mouse_x;
var temp_y=mouse_y;
if (temp_x < 0) {
	temp_x=0;
}
else if (temp_x > global.mapWidth*8) {
	temp_x=global.mapWidth-1;
}
if (temp_y < 0) {
	temp_y=0;
}
else if (temp_y > global.mapHeight*8) {
	temp_y=global.mapHeight-1;
}

i = floor(temp_x/8);
j = floor(temp_y/8);
if (tileInstances[i,j]==-1) {
pos[0]=i;
pos[1]=j;
tileInstances[i,j] = instance_create_layer(i*8, j*8,layer_get_id("zztop"),blankSpace);
}