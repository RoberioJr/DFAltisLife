/*
    File: fn_setupActions.sqf
    Author:

    Description:
    Master addAction file handler for all client-based actions.
*/

life_actions = [];

switch (playerSide) do {

    //Civilian
    case civilian: {
        //Drop fishing net
        life_actions pushBack (player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
        (surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']);

        //Rob person
        life_actions pushBack (player addAction["<t color='#FF0000'>Assaltar Jogador</t>",life_fnc_robAction,"",0,false,false,"",'
        !isNull cursorObject && player distance cursorObject < 3.5 && isPlayer cursorObject && animationState cursorObject == "Incapacitated" && !(cursorObject getVariable ["robbed",false]) ']);
    
	    //Cartel
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Capturar Area</t>",life_fnc_areaCapture,"",0,false,false,"",' ((typeOf cursorTarget) == "Flag_Red_F") ']];
		
		//Estrupar
		life_actions = life_actions + [player addAction["<t color='#FF0000'>COMER O CU DELE</t>",RJM_fnc_ArrombarCU,"",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable ["CuArrombado",FALSE]) && !(player getVariable "Escorting") && !(player getVariable "transporting") && animationState cursorTarget == "Incapacitated"']];
	
	    //Pegar Items
		life_actions = life_actions + [player addAction["<t color='#FFA500'>Pegar Isso</t>",RJM_fnc_PegarItem,"",0,false,false,"",'!isNull cursorObject && cursorObject distance player < 3.5 && TypeOf cursorObject in RJ_ObjsItemsTrabalho && cursorObject GetVariable ["RJ_ItemVar",["",0,False]] select 2']];
	};
    
    //Cops
    case west: {
	    //Cartel
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Capturar Area</t>",life_fnc_areaCapture,"",0,false,false,"",' ((typeOf cursorTarget) == "Flag_Red_F") ']];
		//CopEnter - Driver Seat		
		life_actions = life_actions + [player addAction[localize "STR_pAct_DriverSeat",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];		
        //CopEnter - Passenger Seat		
        life_actions = life_actions + [player addAction[localize "STR_pAct_PassengerSeat",life_fnc_copEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']]; 		
        //CopEnter - Gunner Seat		
        life_actions = life_actions + [player addAction[localize "STR_pAct_GunnerSeat",life_fnc_copEnter,"gunner",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']]; 		
        //CopEnter - Exit		
        life_actions = life_actions + [player addAction[localize "STR_pAct_GoOut",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];
	    //Apreender Items No Chão
		life_actions = life_actions + [player addAction["Apreender Objetos",RJM_fnc_ApreenderItems,cursorTarget,0,false,false,"",'((count(nearestObjects [player,["WeaponHolder"],3])>0) || (count(nearestObjects [player,["GroundWeaponHolder"],3])>0) || (count(nearestObjects [player,["WeaponHolderSimulated"],3])>0))']];
	};
    
    //EMS
    case independent: { 
	    life_actions = life_actions + [player addAction[localize "STR_pAct_DriverSeat",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];		
        //CopEnter - Passenger Seat		
        life_actions = life_actions + [player addAction[localize "STR_pAct_PassengerSeat",life_fnc_copEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']]; 		
        //CopEnter - Gunner Seat		
        life_actions = life_actions + [player addAction[localize "STR_pAct_GunnerSeat",life_fnc_copEnter,"gunner",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']]; 		
        //CopEnter - Exit		
        life_actions = life_actions + [player addAction[localize "STR_pAct_GoOut",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];
	    //Apreender Items No Chão
		life_actions = life_actions + [player addAction["Apreender Objetos",RJM_fnc_ApreenderItems,cursorTarget,0,false,false,"",'((count(nearestObjects [player,["WeaponHolder"],3])>0) || (count(nearestObjects [player,["GroundWeaponHolder"],3])>0) || (count(nearestObjects [player,["WeaponHolderSimulated"],3])>0))']];
	};
};

 /* Cinto De Segurança */
life_actions pushBack (player addAction["<img image='icons\seatOn.paa' size='1.0'/><t color = '#00FF00'>Colocar Cinto</t>",life_fnc_seatbelt,"",7,false,false,"",' !life_seatbelt && vehicle player != player ']);
life_actions pushBack (player addAction["<img image='icons\seatOff.paa' size='1.0'/><t color = '#FF0000'>Remover Cinto</t>",life_fnc_seatbelt,"",7,false,false,"",' life_seatbelt && vehicle player != player ']);

 /* ParaQuedas */
life_actions = life_actions + [player addAction["<t color='#00FF00'>Abrir Paraquedas</t>",RJM_fnc_PQD,"",7,false,false,"",'({player distance _x < 10 max sizeOf typeOf _x && count crew _x > 0} count (player nearEntities ["Helicopter_Base_F", 20]) == 0) && vehicle player == player && (getPos player) select 2 > 50']];
 
 /* Rádio */
life_actions = life_actions + [player addAction["<t color=""#2E9AFE"">" + ("Radio") +"</t>","[1] Call RJM_fnc_Menu","",7,false,false,"",'(vehicle player != player) && (typeOf (vehicle player) in RJ_VeiculosComRadio) && (Driver (vehicle player) IsEqualTo player)']];