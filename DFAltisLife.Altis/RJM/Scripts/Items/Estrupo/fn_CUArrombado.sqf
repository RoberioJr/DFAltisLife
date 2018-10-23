/*

    Author: RobérioJR

*/

private["_Estrupador"];
_Estrupador = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _Estrupador) exitWith {}; //if not the thief get bent
[[getPlayerUID _Estrupador,name _Estrupador,"712"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;//add to wanted list

[] spawn {
    waitUntil {(player getVariable "CuArrombado")};
    player setDamage 0.3;
	life_thirst = 50;
    life_hunger = 50;
    while{(player getVariable "CuArrombado")} do {
        "dynamicBlur" ppEffectEnable true;
        "dynamicBlur" ppEffectAdjust [2];
        "dynamicBlur" ppEffectCommit 1;
        sleep 5;
    };
    "dynamicBlur" ppEffectEnable true;
	"dynamicBlur" ppEffectAdjust [0]; 
	"dynamicBlur" ppEffectCommit 1;
};