/*

    Author: RoberioJR
	
*/

    if (!FpsBoostAtivado) then {
        setTerrainGrid 50;
		enableEnvironment [true, false];
        //setViewDistance 1200;
		Hint 'FpsBoost Ativado!';
		FpsBoostAtivado = true;
    } else {
        setTerrainGrid 25;
		enableEnvironment [true, true];
		//setViewDistance 2500;
		Hint 'FpsBoost Desativado!';
		FpsBoostAtivado = false;
    };