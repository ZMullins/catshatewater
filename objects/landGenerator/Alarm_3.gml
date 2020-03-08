var z=0;
for (z=0;z<ds_list_size(global.rainArray);z++) {
var posxd = ds_list_find_value(global.rainArray,z);
appear=random_range(0,2)
if (appear < global.difficulty*2 && tileInstances[posxd,0]==-1) {

pos=0;
pos[0]=posxd;
pos[1]=0;
tileInstances[posxd,0] = instance_create_layer(posxd*8, 0,layer_get_id("zztop"),watertile);
ds_list_add(global.waterArray,pos);
}
}
alarm[3]=3;