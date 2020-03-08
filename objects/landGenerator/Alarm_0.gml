/*var spreadRate;
var duplicateRate;
random_set_seed(current_time);
for (i=0;i<mapWidth;i++) {
	for (j=0;j<mapHeight;j++) {
		var currentTile = tileInstances[i,j];
		if (currentTile.waterState==1){
		if (object_get_name(currentTile.object_index)=="lowlandtile") {
			spreadRate=1;
			duplicateRate=1;
			var spread = random_range(0, 1);
			if (spread <= spreadRate) {
				var directionWater=irandom(7);
				switch (directionWater)
				{
				case 0: if (i<mapWidth-1 && object_get_name(tileInstances[i+1,j].object_index)=="lowlandtile") {tileInstances[i+1,j].waterState=1} ; break;
				case 1: if (i<mapWidth-1 && j<mapHeight-1 && object_get_name(tileInstances[i+1,j+1].object_index)=="lowlandtile") {tileInstances[i+1,j+1].waterState=1} ; break;
				case 2: if (j<mapHeight-1 && object_get_name(tileInstances[i,j+1].object_index)=="lowlandtile") {tileInstances[i,j+1].waterState=1} ; break;
				case 3: if (i>0 && j<mapHeight-1 && object_get_name(tileInstances[i-1,j+1].object_index)=="lowlandtile") {tileInstances[i-1,j+1].waterState=1} ; break;
				case 4: if (i>0 && object_get_name(tileInstances[i-1,j].object_index)=="lowlandtile") {tileInstances[i-1,j].waterState=1} ; break;
				case 5: if (i>0 && j>0 && object_get_name(tileInstances[i-1,j-1].object_index)=="lowlandtile") {tileInstances[i-1,j-1].waterState=1} ; break;
				case 6: if (j>0 && object_get_name(tileInstances[i,j-1].object_index)=="lowlandtile") {tileInstances[i,j-1].waterState=1} ; break;
				case 7: if (i<mapWidth-1&& j>0 && object_get_name(tileInstances[i+1,j-1].object_index)=="lowlandtile") {tileInstances[i+1,j-1].waterState=1} ; break;
				}
			}
		
		}	
		
		else {
			spreadRate=0.4;
			duplicateRate=0.0;
			var spread = random_range(0, 1);
			if (spread <= spreadRate) {
				var directionWater=irandom(7);
				var duplicate = random_range(0, 1);
				if (!(duplicate <= duplicateRate)){
					
				}
				switch (directionWater)
				{
				case 0: if (i<mapWidth-1) {tileInstances[i+1,j].waterState=1; currentTile.waterState=0;} ; break;
				case 1: if (i<mapWidth-1 && j<mapHeight-1) {tileInstances[i+1,j+1].waterState=1; currentTile.waterState=0;} ; break;
				case 2: if (j<mapHeight-1) {tileInstances[i,j+1].waterState=1; currentTile.waterState=0;} ; break;
				case 3: if (i>0 && j<mapHeight-1) {tileInstances[i-1,j+1].waterState=1; currentTile.waterState=0;} ; break;
				case 4: if (i>0) {tileInstances[i-1,j].waterState=1; currentTile.waterState=0;}; break;
				case 5: if (i>0 && j>0) {tileInstances[i-1,j-1].waterState=1; currentTile.waterState=0;}; break;
				case 6: if (j>0) {tileInstances[i,j-1].waterState=1; currentTile.waterState=0;}; break;
				case 7: if (i<mapWidth-1&& j>0) {tileInstances[i+1,j-1].waterState=1; currentTile.waterState=0;} ; break;
				}
			}
			
		
		}
		
		}
	}}
alarm[0]=10;*/