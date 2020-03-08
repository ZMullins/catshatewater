global.inkleft = 350-global.difficulty*50;
global.inkstart=350-global.difficulty*50;
var i;
var j;
var n;
global.mapWidth = 256;
global.mapHeight = 193;

var tileOptionArray;
tileOptionArray=[grasstile,-1];
var neighborWeight = 0.52;
weights=[0.012-global.difficulty/10,2];
var tileGrid;
global.tileInstances=0;
var totalWeight=0;
for (i=0;i<array_length_1d(weights);i++){
	totalWeight+=weights[i];
}
var z=0;

global.rainArray=ds_list_create();	
for (z=0;z<global.mapWidth-1;z++) {
	var rand = random_range(0, 1);
	if (rand <global.difficulty) {
		ds_list_add(global.rainArray,z);

	}
}
random_set_seed(current_time);

for (i=0;i<global.mapWidth;i++) {
	for (j=0;j<global.mapHeight;j++) {
		tileGrid[i,j]=-1;
		var rand = random_range(0, totalWeight);
		var cumeWeight=0;
		for (n=0;n<array_length_1d(weights);n++){
			if (rand >= cumeWeight && rand <=cumeWeight+weights[n]) {
				tileGrid[i,j]=tileOptionArray[n];
				break;
			}
			cumeWeight+=weights[n];
		}
	}
}

for (i=0;i<global.mapWidth;i++) {
	for (j=0;j<global.mapHeight;j++) {
		for (n=0;n<array_length_1d(weights);n++){
			if (tileGrid[i,j]==-1) {
			if (i > 0) {
				if (tileGrid[i-1,j] == tileOptionArray[n]) {
					var randNeigh = random_range(0,1);
					if (randNeigh <= neighborWeight) {
						tileGrid[i,j]=tileOptionArray[n];
						break;
					}
				}
			}
			if (j > 0) {
				if (tileGrid[i,j-1] == tileOptionArray[n]) {
					var randNeigh = random_range(0,1);
					if (randNeigh <= neighborWeight) {
						tileGrid[i,j]=tileOptionArray[n];
						break;
					}
				}
			}
			if (j > 0 && i < global.mapWidth-1) {
				if (tileGrid[i+1,j-1] == tileOptionArray[n]) {
					var randNeigh = random_range(0,1);
					if (randNeigh <= neighborWeight) {
						tileGrid[i,j]=tileOptionArray[n];
						break;
					}
				}
			}
		}}
		
		if (i < 25 && i > 5 && j > 90 && j < 110) {
			tileGrid[i,j]=-1
		}
		if (i < 27 && i > 5 && j ==110) {
			tileGrid[i,j]=grasstile;
		}
		if (i < 250 && i > 230 && j > 50 && j < 70) {
			tileGrid[i,j]=-1
		}
		if (i < 27 && i > 5 && j ==90) {
			tileGrid[i,j]=grasstile;
		}
		if (tileGrid[i,j]!=-1){
		tileInstances[i,j] = instance_create_layer(i*8, j*8,layer_get_id("zztop"),tileGrid[i,j]);}
		else {
		tileInstances[i,j] =-1;
		}
	}}


/*
for (i=0;i<global.mapWidth;i++) {
	for (j=0;j<global.mapHeight;j++) {
		var rand = random_range(0, totalWeight);
		var cumeWeight=0;
		for (n=0;n<array_length_1d(weights);n++){
			if (rand >= cumeWeight && rand <=cumeWeight+weights[n]) {
				tileGrid[i,j]=tileOptionArray[n];
				break;
			}
			if (i > 0) {
				if (tileGrid[i-1,j] == tileOptionArray[n]) {
					var randNeigh = random_range(0,1);
					if (randNeigh <= neighborWeight) {
						tileGrid[i,j]=tileOptionArray[n];
						break;
					}
				}
			}
			if (j > 0) {
				if (tileGrid[i,j-1] == tileOptionArray[n]) {
					var randNeigh = random_range(0,1);
					if (randNeigh <= neighborWeight) {
						tileGrid[i,j]=tileOptionArray[n];
						break;
					}
				}
			}
			if (j > 0 && i < global.mapWidth-1) {
				if (tileGrid[i+1,j-1] == tileOptionArray[n]) {
					var randNeigh = random_range(0,1);
					if (randNeigh <= neighborWeight) {
						tileGrid[i,j]=tileOptionArray[n];
						break;
					}
				}
			}
			cumeWeight+=weights[n];
		}
		if (tileGrid[i,j]!=-1){
		tileInstances[i,j] = instance_create_layer(i*8, j*8,layer_get_id("zztop"),tileGrid[i,j]);}
		else {
		tileInstances[i,j] =-1;
		}
	}
}
*/
global.waterArray=ds_list_create();
alarm[2]=5;
alarm[3]=50