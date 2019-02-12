#include "RJM_AS_script_macros.hpp"
#include "..\..\..\script_macros.hpp"
/*
    File: fn_autoSaveInv.sqf
    Author: Leon "DerL30N" Beeser"

    Description:
    Used for player automatic sync to the server.
*/
if (!isServer) then {

	while {true} do {

		if (RJM_AS_SETTINGS(getNumber,"lockManuelSync") isEqualTo 1) then
		{
			sleep ((RJM_AS_SETTINGS(getNumber,"autosaveInterval") - RJM_AS_SETTINGS(getNumber,"lockManuelSync")) * 60);
		} else {
			sleep ((RJM_AS_SETTINGS(getNumber,"autosaveInterval")) * 60);
		};

		if (RJM_AS_SETTINGS(getNumber,"waitforManSave") isEqualTo 1) then
		{
			if (isNil "life_session_time") then { life_session_time = false; };
			waitUntil { (!life_session_time) };
		};

		if (alive player) then
		{
			[false] call SOCK_fnc_updateRequestRJ;

			if (RJM_AS_SETTINGS(getNumber,"chatInfo") isEqualTo 1) then
			{
				if (RJM_AS_SETTINGS(getNumber,"advancedChatInfo") isEqualTo 1) then
				{
					if (RJM_AS_SETTINGS(getNumber,"lockManuelSync") isEqualTo 1) then
					{
						systemChat format["Seus Dados Estão Sendo Salvos. Espere 15 Segundos Antes De Deslogar.", (RJM_AS_SETTINGS(getNumber,"lockManuelSync"))];
					};
				} else {
					systemChat "Seus Dados Foram Salvos!";
				};
			};

			if (RJM_AS_SETTINGS(getNumber,"lockManuelSync") isEqualTo 1) then
			{
				life_session_time = true;
				sleep ((RJM_AS_SETTINGS(getNumber,"lockSyncTime")) * 60);
				life_session_time = false;
			};
		};
	};
};