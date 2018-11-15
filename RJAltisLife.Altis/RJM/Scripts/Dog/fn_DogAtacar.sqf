/*
    Author: RobérioJR
*/

_Alvo = CursorObject;
if !(IsPlayer _Alvo) ExitWith {};
if (_Alvo distance player > 80) ExitWith { Hint 'O Alvo Está Muito Longe Para O Dog Atacar.'; };
Hint Format['Cao Irá Atacar: %1',Name _Alvo];
RJ_DogOcupado = true;

//Forçar O Dog A Correr
[] Spawn {
    Sleep 2;
    dog playMove "Dog_Sprint";
};

[] spawn {
    while {RJ_DogOcupado} do {
        [dog,"dogAtacando",80,1] remoteExecCall ["life_fnc_say3D",0];
		sleep 6.5;
    };
};

[_Alvo] spawn {
    _Alvo = _this select 0; 
    while {RJ_DogOcupado} do {
	    if (IsNull _Alvo) then { RJ_DogOcupado = false; };
	    if (!Alive _Alvo) then { RJ_DogOcupado = false; };
		if (_Alvo distance dog > 75) then { RJ_DogOcupado = false; };
	    dog moveTo getPos _Alvo;
		sleep 0.8;
	};
};

[_Alvo] spawn {
    _Alvo = _this select 0; 
    while {RJ_DogOcupado} do { 
	    if (dog Distance _Alvo < 2) then {
		    RJ_DogOcupado = false;
			[] Spawn { [dog,"dogAtaq",80,1] remoteExecCall ["life_fnc_say3D",-2]; };
			[] remoteExecCall ["RJM_fnc_DogImob",_Alvo];
		};
		sleep 0.2;
	};
};
