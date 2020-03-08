var i=0
random_set_seed(current_time);
for (i=0;i<ds_list_size(global.waterArray);i++) {
	currentTile=ds_list_find_value(global.waterArray,i);
	posx = currentTile[0];
	posy = currentTile[1];

	if (posy == global.mapHeight-1) {
		ds_list_delete(global.waterArray, i);
		instance_destroy(tileInstances[posx,posy],false);
		tileInstances[posx,posy]=-1;
	}
	else if (tileInstances[posx,posy+1]==-1) {
		tileInstances[posx,posy+1]=tileInstances[posx,posy];
		tileInstances[posx,posy+1].y +=8;
		tileInstances[posx,posy]=-1;
		pos=0;
		pos[0]=posx;
		pos[1]=posy+1;
		ds_list_replace(global.waterArray, i, pos);
		
			
	
		}
		else {
			var randNum = irandom(3);
			if (randNum == 0) {
				if (posx==0) {
					
				}
				else if (tileInstances[posx-1,posy]==-1){
					tileInstances[posx-1,posy]=tileInstances[posx,posy];
					tileInstances[posx-1,posy].x -=8;
					tileInstances[posx,posy]=-1;
					pos=0;
					pos[0]=posx-1;
					pos[1]=posy;
					ds_list_replace(global.waterArray, i, pos);
				}
			}
			else if (randNum == 1) {
				if (posx==global.mapWidth-1) {
					
				}
				else if (tileInstances[posx+1,posy]==-1){
					tileInstances[posx+1,posy]=tileInstances[posx,posy];
					tileInstances[posx+1,posy].x+=8;
					tileInstances[posx,posy]=-1;
					pos=0;
					pos[0]=posx+1;
					pos[1]=posy;
					ds_list_replace(global.waterArray, i, pos);
				}
			}}
	}
	alarm[2]=2;
	/*
		var currentTile = tileInstances[i,j];
		if (currentTile == -1) {}
		else{
		if (object_get_name(currentTile.object_index)=="watertile"){
			if (j==mapHeight-1) {
				instance_destroy(tileInstances[i,j],true); 
			}	
		//	else if (tileInstances[i,j+1].waterState==0 && object_get_name(tileInstances[i,j+1].object_index)=="blankSpace") {
		else if (tileInstances[i,j+1]==0) {
				tileInstances[i,j+1]=tileInstances[i,j];
				tileInstances[i,j+1].object_index.y +=32;
				tileInstances[i,j]=0;
			}
			else {
			var randNum = irandom(2);
			if (randNum == 0) {
				if (i==0) {
					
				}
				else if (tileInstances[i-1,j]==0){
					tileInstances[i-1,j]=tileInstances[i,j];
					tileInstances[i-1,j].object_index.x -=32;
					tileInstances[i,j]=0;
				}
			}
			else if (randNum == 1) {
				if (i==mapWidth-1) {
					//tileInstances[i,j].waterState=0;
				}
				else if (tileInstances[i+1,j]==0){
					tileInstances[i+1,j]=tileInstances[i,j];
					tileInstances[i+1,j].object_index.x +=32;
					tileInstances[i,j]=0;
				}
			}
			}
		}
		
	}
}}
alarm[2]=1;*/