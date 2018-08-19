/*

    Author: RobérioJR
	|08/08/18|

*/
addMissionEventHandler ["EntityKilled",{
params ["_killed", "_killer", "_instigator"];
RJ_fnc_ADCMORTE = {Mortes = Mortes + 1;};
switch (playerSide) do {
    case west: {
    _Inimigo1 = east;
	_Inimigo2 = independent;
	};
	case east: {
    _Inimigo1 = west;
	_Inimigo2 = independent;
	};
	case independent: {
    _Inimigo1 = west;
	_Inimigo2 = east;
	};
};
    if (isPlayer _instigator AND (side group _killed isEqualTo _Inimigo1 || side group _killed isEqualTo _Inimigo2)) then {
        //Mortes = Mortes + 1;
		remoteExecCall [RJ_fnc_ADCMORTE,_killer];
    };
};