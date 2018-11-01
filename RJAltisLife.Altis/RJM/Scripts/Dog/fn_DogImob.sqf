/*
    Author: RobérioJR
*/

[] spawn {
private ["_curWep","_curMags","_attach","_S"];
    if (!life_istazed) then {
        life_istazed = true;
        _curWep = currentWeapon player;
        _curMags = magazines player;
        _attach = if (!(primaryWeapon player isEqualTo "")) then {primaryWeaponItems player} else {[]};

        {player removeMagazine _x} forEach _curMags;
        player removeWeapon _curWep;
        player addWeapon _curWep;
        if (!(count _attach isEqualTo 0) && !(primaryWeapon player isEqualTo "")) then {
            {
                player addPrimaryWeaponItem _x;
            } forEach _attach;
        };

        if (!(count _curMags isEqualTo 0)) then {
            {player addMagazine _x;} forEach _curMags;
        };
		
		_S = ['grito1','grito2','grito3'] Call Bis_fnc_SelectRandom;
        [player,_S,100,1] remoteExecCall ["life_fnc_say3D",0];

        _obj = "Land_ClutterCutter_small_F" createVehicle ASLTOATL(visiblePositionASL player);
        _obj setPosATL ASLTOATL(visiblePositionASL player);

        [player,"AinjPfalMstpSnonWnonDf_carried_fallwc"] remoteExecCall ["life_fnc_animSync",0];
        player attachTo [_obj,[0,0,0]];
        disableUserInput true;
        sleep 15;

        [player,"AmovPpneMstpSrasWrflDnon"] remoteExecCall ["life_fnc_animSync",0];

        if (!(player getVariable ["Escorting",false])) then {
            detach player;
        };
        life_istazed = false;
        player allowDamage true;
        disableUserInput false;
    };
};

