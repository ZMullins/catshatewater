if(room != room_first)
{

global.difficulty+=0.02;
room_restart();
}


if(room == room_first)
{
room_goto_next();
}

