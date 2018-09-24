/*
    Author: RobérioJR
*/
	
    while {alive dog} do {
		waitUntil {dog distance player < 1.4};
        if (dog distance player < 1.4) then {
			DogAc1 = player addAction ['<t color="#006FFF">Alimentar Dog</t>','RJM\Scripts\Dog\DogComida.sqf'];
			DogAc2 = player addAction ['<t color="#006FFF">Status Do Dog</t>','RJM\Scripts\Dog\DogStatus.sqf'];
	    };
        waitUntil {dog distance player > 1.4};
		player RemoveAction DogAc1;
		player RemoveAction DogAc2;
	};
	WaitUntil {!Alive dog};
    player RemoveAction DogAc1;
	player RemoveAction DogAc2;	