//https://community.bistudio.com/wiki/Arma_3_Animals:_Override_Default_Animal_Behaviour_Via_Script

// Spawn dog
_dog = createAgent ["Fin_random_F", getPos player, [], 5, "CAN_COLLIDE"];

// Disable animal behaviour
_dog setVariable ["BIS_fnc_animalBehaviour_disable", true];

// Following loop
0 = [_dog] spawn {
	params ["_dog"];

	// Force dog to sprint
	_dog playMove "Dog_Sprint";
	
	while {alive _dog} do 
	{	
		_dog moveTo getPos player;
		sleep 0.5;
	};
};