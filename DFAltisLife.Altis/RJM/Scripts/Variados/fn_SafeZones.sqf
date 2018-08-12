/*

    Author: RobérioJR
    |08/08/18|

*/


if (isDedicated) exitWith {};
waitUntil {!isNull player};
waitUntil {time > 0};

private ["_eh1", "_InGodMode" ];
NaSafeZone = false;

#define SAFEZONES [['SZ_Kavala',175],['SZ_Athira',175],['SZ_Pyrgos',175],['SZ_Sofia',175]]

while {True} do {
   _InGodMode = player getVariable ["isAdminInvulnerable", false];
   {
if (alive player) then {
		if (((GetMarkerPos (_x select 0)) distance player < (_x select 1)) && (!NaSafeZone)) then {
			if ( side player isEqualto civilian ) then {
				_eh1 = player addEventHandler ["fired", {deleteVehicle (_this select 6); titleText ["Armas/Granadas São proibidas na safezone!", "PLAIN", 3]; titleFadeOut 1; }];
			};
			NaSafeZone = true;
			if (isPlayer player) then {
				systemChat format["Você entrou na safezone %1. Você não pode receber dano.", (name player)];
			};
			if (!_InGodMode) then {
				player allowDamage false;
			};
		};

		if (((GetMarkerPos (_x select 0)) distance player > (_x select 1)) && (NaSafeZone)) then {
			player removeEventHandler ["fired", _eh1];
			NaSafeZone = false;
			if (isPlayer player) then {
				hintSilent parseText format ["<t size='3.4' color='#ff0000' shadow='0'>AVISO!</t> <t size='1.2'> Você está Saindo Da SafeZone! Você Poderá Ser Ferido! </t>"];
			};

			if (!_InGodMode) then {
				player allowDamage true;
			};
		};
	};
   } count SAFEZONES > 0;
  sleep 1;
};

