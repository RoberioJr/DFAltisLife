/*

    Author: RoberioJR
	
*/

    if (!FpsBoostAtivado) then {
	    If (Diag_fps > 32) ExitWith { Hint "Seu Fps Está Maior Que 30!"; };
        setTerrainGrid 50;
		//enableEnvironment [true, false];
        setViewDistance 800;
		Hint 'FpsBoost Ativado!';
		FpsBoostAtivado = true;
    } else {
        setTerrainGrid 25;
		//enableEnvironment [true, true];
		setViewDistance 800;
		Hint 'FpsBoost Desativado!';
		FpsBoostAtivado = false;
    };