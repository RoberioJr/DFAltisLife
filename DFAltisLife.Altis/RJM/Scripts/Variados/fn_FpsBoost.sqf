/*

    Author: RoberioJR
	
*/

if (IsNil FpsBoostAtivado) then { FpsBoostAtivado = false };

    if (!FpsBoostAtivado) then {
        setTerrainGrid 50;
        setViewDistance 1200;
		Hint 'FpsBoost Ativado!';
    };
	if (FpsBoostAtivado) then {
        setTerrainGrid 25;
		setViewDistance 2500;
		Hint 'FpsBoost Desativado!';
    };