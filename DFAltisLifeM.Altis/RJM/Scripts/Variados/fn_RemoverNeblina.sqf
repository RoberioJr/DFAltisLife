/*

    Author: RobérioJR [ASF]
	desc: Remover Neblina e Chuva

*/

[] spawn { /* Remover Neblina */
    while{true} do {
        sleep 20;
        300 setFog 0;
		999999 setRain 0;
		//forceWeatherChange;
        sleep 600;
    };
};