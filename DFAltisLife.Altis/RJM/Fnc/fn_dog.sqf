//https://community.bistudio.com/wiki/Arma_3_Animals:_Override_Default_Animal_Behaviour_Via_Script
[] spawn {
dog = createAgent ["Fin_random_F", getPos player, [], 5, "CAN_COLLIDE"];
dog setVariable ["BIS_fnc_animalBehaviour_disable", true];

[] spawn {
	dog playMove "Dog_Sprint";
	while {alive dog} do {	
		dog moveTo getPos player;
		sleep 0.5;
	};
 };
 
[] spawn {
    while {alive dog} do {
        if (dog distance player < 10) then {
		    dog playMove "Dog_Walk";
			systemChat 'Cao Perto, Andando';
		} else { dog playMove "Dog_Sprint"; systemChat 'Cao Longe, Correndo'; };
	    sleep 4;
	};	
 };
 
 [] spawn {
        while {alive dog} do {
		    sleep 2.5;
            _k = [1,2,3,4,5] call bis_fnc_selectRandom;
		    _S = ['pantdois','pantum','dogYelp'] call bis_fnc_selectRandom;
			if (_k IsEqualTo 1) then { dog say3D [_S,50,1]; };
		};
    };
};