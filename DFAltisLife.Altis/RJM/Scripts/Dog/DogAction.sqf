/*
    Author: RobérioJR
*/
    
	Private ['_Ac1','_Ac2'];
    while {alive dog} do {
		waitUntil {dog distance player < 1.6};
        if (dog distance player < 1.6) then {
			_Ac1 = player addAction ['<t color="#006FFF">Alimentar Dog</t>','RJM\Scripts\Dog\DogComida.sqf'];
			_Ac2 = player addAction ['<t color="#006FFF">Status Do Dog</t>','RJM\Scripts\Dog\DogStatus.sqf'];
	    };
        waitUntil {dog distance player > 1.6};
		player RemoveAction _Ac1;
		player RemoveAction _Ac2;
	};