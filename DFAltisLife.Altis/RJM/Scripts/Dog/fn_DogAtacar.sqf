
_Alvo = CursorObject;
if !(IsPlayer _Alvo) exitWith {};
Hint Format['Cao Irá Atacar: %1',Name _Alvo];
DogAtacando = true;
dog playMove "Dog_Sprint";

[] spawn {
    while {DogAtacando} do {
        [dog,"dogAtacando",70,1] remoteExecCall ["life_fnc_say3D",0];
		sleep 6.5;
    };
};

[_Alvo] spawn {
    _Alvo = _this select 0; 
    while {DogAtacando} do {
	    if (!Alive _Alvo) then { DogAtacando = false; };
		if (_Alvo distance dog > 80) then { DogAtacando = false; };
	    dog moveTo getPos _Alvo;
		sleep 1.2;
	};
};

[_Alvo] spawn {
    _Alvo = _this select 0; 
    while {DogAtacando} do { 
	    if (dog Distance _Alvo < 2) then {
		    DogAtacando = false;
			[] remoteExecCall ["RJM_fnc_DogImob",_Alvo];
			[dog,"dogAtaq",60,1] remoteExecCall ["life_fnc_say3D",0];
		};
		sleep 0.4;
	};
};
