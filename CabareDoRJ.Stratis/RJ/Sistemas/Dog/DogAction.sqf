
    
	Private '_Ac';
    while {alive dog} do {
	    sleep 1;
        if (dog distance player < 1.8) then {
			_Ac = player addAction ['Alimentar','RJ\Sistemas\Dog\DogComida.sqf'];
	    };
        waitUntil {dog distance player > 2};
		player RemoveAction _Ac;
	};