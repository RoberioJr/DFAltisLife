/*

    Author: RobérioJR [ASF]
	desc: Remover Neblina e Chuva

*/

[] spawn { /* Remover Neblina */
    while{true} do {
        sleep 20;
        300 setFog 0;
        sleep 600;
    };
};
[] spawn { /* Remover Chuva */
    While {True} Do {
	    _nivelChuva = Rain;
		sleep 10;
		WaitUntil {_nivelChuva > 0.2};
		0 setRain 0;
        forceWeatherChange;
        999999 setRain 0;
	};
};
