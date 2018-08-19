private["_organThief"];
_organThief = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _organThief) exitWith {}; //if not the thief get bent

[_organThief,"Rim",1] call life_fnc_handleInv;
[[getPlayerUID _organThief,name _organThief,"919"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;//add to wanted list
sleep 300;//no more organ theft for at least 5 minutes, so they cant just do it over and over, can do whatever time you want
_organThief setVariable["temOrgao",false,true];//allow them to be able to take organs again- setting a variable
