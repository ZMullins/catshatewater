/*var moveDown = 0;

for (i=0;i<mapWidth;i++) {
	for (j=mapHeight-1;j>=0;j--) {
		var currentTile = tileInstances[i,j];
		if (currentTile.waterState==1){
			if (j==mapHeight-1) {
				currentTile.waterState=0;
			}	
		//	else if (tileInstances[i,j+1].waterState==0 && object_get_name(tileInstances[i,j+1].object_index)=="blankSpace") {
		else if (tileInstances[i,j+1]==0) {
				currentTile.waterState=0;
				tileInstances[i,j+1].waterState=1;
			}
			else {
			var randNum = irandom(2);
			if (randNum == 0) {
				if (i==0) {
					//tileInstances[i,j].waterState=0;
				}
				else if (tileInstances[i-1,j].waterState==0 && tileInstances[i-1,j]==0){
					tileInstances[i-1,j].waterState=1;
					tileInstances[i,j].waterState=0;
				}
			}
			else if (randNum == 1) {
				if (i==mapWidth-1) {
					//tileInstances[i,j].waterState=0;
				}
				else if (tileInstances[i+1,j].waterState==0 && object_get_name(tileInstances[i+1,j].object_index)=="blankSpace"){
					tileInstances[i+1,j].waterState=1;
					tileInstances[i,j].waterState=0;
				}
			}
			}
		}
		
	}
}
alarm[1]=1;*/