/*
    Author: RobérioJR
*/

_Alvo = CursorObject;
if !(IsPlayer _Alvo) ExitWith {};
if (_Alvo distance player > 80) ExitWith { Hint 'O Alvo Está Muito Longe Para O Dog Atacar.'; };
Hint Format['Cao Irá Atacar: %1',Name _Alvo];
RJ_DogAtacando = true;

//Forçar O Dog A Correr
[] Spawn {
    Sleep 3;
	dog playMove "Dog_Sprint";
};

[] spawn {
    while {RJ_DogAtacando} do {
        [dog,"dogAtacando",80,1] remoteExecCall ["life_fnc_say3D",0];
		sleep 6.5;
    };
};

[_Alvo] spawn {
    _Alvo = _this select 0; 
    while {RJ_DogAtacando} do {
	    if (IsNull _Alvo) then { RJ_DogAtacando = false; };
	    if (!Alive _Alvo) then { RJ_DogAtacando = false; };
		if (_Alvo distance dog > 75) then { RJ_DogAtacando = false; };
	    dog moveTo getPos _Alvo;
		sleep 0.8;
	};
};

[_Alvo] spawn {
    _Alvo = _this select 0; 
    while {RJ_DogAtacando} do { 
	    if (dog Distance _Alvo < 2) then {
		    RJ_DogAtacando = false;
			[] remoteExecCall ["RJM_fnc_DogImob",_Alvo];
			[dog,"dogAtaq",80,1] remoteExecCall ["life_fnc_say3D",-2];
		};
		sleep 0.2;
	};
};
