/*

    Author: RobérioJR
	|10/08/18|

*/

private ["_handled","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh","_locked","_interactionKey","_mapKey","_interruptionKeys"];
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;
_speed = speed cursorObject;
_handled = false;

_interactionKey = if (count (actionKeys "User10") isEqualTo 0) then {219} else {(actionKeys "User10") select 0};
_mapKey = (actionKeys "ShowMap" select 0);
//hint str _code;
_interruptionKeys = [17,30,31,32]; //A,S,W,D

//Vault handling...
if (_code in (actionKeys "GetOver") || _code in (actionKeys "salute") || _code in (actionKeys "SitDown") || _code in (actionKeys "Throw") || _code in (actionKeys "GetIn") || _code in (actionKeys "GetOut") || _code in (actionKeys "Fire") || _code in (actionKeys "ReloadMagazine") || _code in [16,18]) exitWith {
    _handled = true;
};

switch (_code) do {

    //Menu De Equipamentos Para Os Admins F7
	case 65: {
	    if ((getPlayerUID player) in Administradores) then {
	        [] execVM "RJ\Sistemas\Admin\VAS\open.sqf";
		};
	};
	
	case 48: {
	    //if (typeOf vehicle player == 'B_G_Quadbike_01_F') then {
	       [] Call RJ_fnc_Vel;
		//};
	};
	
	//Spawner De Veiculos Para Os Admins F8
	case 66: {
	    if ((getPlayerUID player) in Administradores) then {
	        [] call TUT_fnc_OpenVehUI;
		};
    };
    
   //Space key for Jumping
	case 57: {
		if (isNil "jumpActionTime") then {jumpActionTime = 0;};
		if (_shift && {!(animationState player isEqualTo "AovrPercMrunSrasWrflDf")} && {isTouchingGround player} && {stance player isEqualTo "STAND"} && {speed player > 2} && {((velocity player) select 2) < 2.5} && {time - jumpActionTime > 1.5}) then {
			jumpActionTime = time; //Update the time.
			[player] remoteExec ["RJ_fnc_PuloDoGato",0]; //Global execution
			_handled = true;
		};
	};

    //Holster / recall weapon. (Shift + H)
    case 35: {
        if (_shift && !_ctrlKey && !(currentWeapon player isEqualTo "")) then {
            RJ_ArmaAtu = currentWeapon player;
            player action ["SwitchWeapon", player, player, 100];
            player switchCamera cameraView;
        };

        if (!_shift && _ctrlKey && !isNil "RJ_ArmaAtu" && {!(RJ_ArmaAtu isEqualTo "")}) then {
            if (RJ_ArmaAtu in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
                player selectWeapon RJ_ArmaAtu;
            };
        };
    };

    //Y Player Menu
    case 21: {
        if (!_alt && !_ctrlKey && !dialog && !(player getVariable ["restrained",false]) && {!life_action_inUse}) then {
            //[] call life_fnc_openMainMenu;
        };
    };

    //O Key
    case 24: {
        if (_shift) then {
            if !(soundVolume isEqualTo 1) then {
                1 fadeSound 1;
                systemChat localize "STR_MISC_soundnormal";
            } else {
                1 fadeSound 0.1;
                systemChat localize "STR_MISC_soundfade";
            };
        };
    };
};

_handled;
