/*
    Author: RobérioJR
	//https://community.bistudio.com/wiki/Arma_3_Animals:_Override_Default_Animal_Behaviour_Via_Script
*/

/* Criar O DOG */
dog = createAgent ["Fin_random_F", getPos player, [], 5, "CAN_COLLIDE"];

/* Configuração Do Dog */
 dog setVariable ["BIS_fnc_animalBehaviour_disable", true];
 dog setVariable ["RJ_Dono", Name Player];
 dog setAnimSpeedCoef 2;
 dog setBehaviour "CARELESS";
 dog setSkill 1;

/* Variáveis Do Dog */
 RJ_DogOcupado = false;
 RJ_DogAtacando = false;
 JogadorTemUmCachorro = true;
 RJ_FomeDog = 100;

  /* Movimentação Do Dog */
[] spawn {
	while {alive dog} do {	
	    WaitUntil {!RJ_DogOcupado};
		WaitUntil {!RJ_DogAtacando};
		WaitUntil {dog distance player > 3.1};
		if (dog Distance player > 300) then { 
		    dog setPos [((getPos player) select 0) + 9, ((getPos player) select 1) + 9, 0];  
		};
		dog moveTo getPos player;
		sleep 1;
	};
 };
 
[] spawn {
    While {alive dog} Do {
	    Sleep 1;
	    waitUntil {typeOf vehicle player in ['C_Offroad_01_F']};
		_veidog = (vehicle player);
		if (dog distance player < 4.5) Then {
		    If (typeOf _veidog IsEqualTo 'C_Offroad_01_F') Then {
		        dog attachTo [_veidog,[0,-2.2,-0.7]];
				dog setDir 180;
		    };
			dog playMove "Dog_Sit";
		    waitUntil {vehicle player == player}; //Jogador Saiu Do Veiculo
		    dog attachTo [_veidog,[0,-4.8,-1]];
		    sleep 0.3;
		    Detach dog;
		};
	};
};
 
 /* Quando O Dog Morrer */
[] spawn {
    WaitUntil {!Alive dog};
	RJ_DogOcupado = false;
	RJ_DogAtacando = false;
	JogadorTemUmCachorro = false;
	[dog,"dogYelp",75,1] remoteExecCall ["life_fnc_say3D",0];
	SystemChat Format['%1, Seu Cachorro Morreu!',Name Player]; 
};
 
  /* IA De Correr E Andar */
[] spawn {
    while {alive dog} do {
	    WaitUntil {!RJ_DogOcupado};
		WaitUntil {!RJ_DogAtacando};
		if (dog distance player < 3) then {
		    dog playMove "Dog_Sit";
			WaitUntil {dog distance player > 3};
			//SystemChat 'Cao Muito Perto, Sentado';
		};
        if (dog distance player < 10) then {
		    dog playMove "Dog_Walk";
			WaitUntil {dog distance player < 3.1 || (dog distance player > 10)};
			//SystemChat 'Cao Perto, Andando';
		}; 
		If (dog distance player > 10) then { 
		    dog playMove "Dog_Sprint"; 
			WaitUntil {dog distance player < 10};
		    //SystemChat 'Cao Longe, Correndo'; 
		};
	    sleep 2;
	};	
 };
 
  /* Emitir Sons */
[] spawn {
    while {alive dog} do {
		sleep 2.5;
        _K = [1,2,3,4,5,6] call BIS_fnc_SelectRandom;
        if (_K IsEqualTo 2) then { 
			_S = ['pantdois','pantum','dogLat'] call BIS_fnc_SelectRandom;
			[dog,_S,60,1] remoteExecCall ["life_fnc_say3D",0]; 
	    };
	};
};

[] spawn {
    WaitUntil {!Alive Player};
	dog SetDamage 1;
	deleteVehicle dog;
};
 
	/* Fome Do Dog */
[] spawn {
    [] execVM 'RJM\Scripts\Dog\DogAction.sqf';
    While {Alive Dog} do {
        Sleep 42;
	    RJ_FomeDog = RJ_FomeDog - 1;
		if (RJ_FomeDog < 31) then { SystemChat Format['%1, Seu Cão Está Ficando Com Fome!',Name Player]; };
	    if (RJ_FomeDog < 1) then { dog SetDamage 1; }
    };
};
