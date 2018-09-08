
_Alvo = CursorObject;
if !(IsPlayer _Alvo) exitWith {};
DogAtacando = true;

[] spawn {
    while {DogAtacando} do {
        [dog,"dogAtacando",70,1] remoteExecCall ["RJ_fnc_say3D",0];
		dog playMove "Dog_Sprint";
		sleep 6.5;
    };
};

[_Alvo] spawn {
    _Alvo = _this select 0; 
    while {DogAtacando} do {
	    if (IsNull _Alvo) then { DogAtacando = false; };
	    if (!Alive _Alvo) then { DogAtacando = false; };
		if (_Alvo distance dog > 70) then { DogAtacando = false; };
	    dog moveTo getPos _Alvo;
		sleep 0.8;
	};
};

[_Alvo] spawn {
    _Alvo = _this select 0; 
    while {DogAtacando} do { 
	    if (dog Distance _Alvo < 2) then {
		    DogAtacando = false;
			[] remoteExecCall ["RJ_fnc_DogImob",_Alvo];
			[dog,"dogAtaq",60,1] remoteExecCall ["RJ_fnc_say3D",0];
		};
		sleep 0.4;
	};
};
