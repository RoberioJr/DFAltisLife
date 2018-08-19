
    
	Private '_Ac';
    while {alive dog} do {
	    sleep 1;
        if (dog distance player < 1.5) then {
			_Ac = player addAction ['<t color="#006FFF">Alimentar</t>','RJM\Scripts\Dog\DogComida.sqf'];
	    };
        waitUntil {dog distance player > 1.6};
		player RemoveAction _Ac;
	};