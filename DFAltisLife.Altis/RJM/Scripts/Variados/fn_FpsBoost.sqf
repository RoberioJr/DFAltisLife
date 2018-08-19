/*

    Author: RoberioJR
	
*/

    if (!FpsBoostAtivado) then {
        setTerrainGrid 50;
        //setViewDistance 1200;
		Hint 'FpsBoost Ativado!';
		FpsBoostAtivado = true;
    } else {
        setTerrainGrid 25;
		//setViewDistance 2500;
		Hint 'FpsBoost Desativado!';
		FpsBoostAtivado = false;
    };