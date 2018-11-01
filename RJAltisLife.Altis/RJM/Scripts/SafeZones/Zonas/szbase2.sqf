if (isDedicated) exitWith {};

Waituntil {!IsNil "RJ_Base"};
if (RJ_Base != 2) exitWith {};
waitUntil {!isNull player};
waitUntil {time > 0};

private ["_inSafeZone","_safeZone","_dis"];
_inSafeZone = false;
_safeZone = getMarkerPos "SafeBase2";
_dis = 75;

while {true} do {
	if (alive player) then {

		if ((_safeZone distance player < _dis) && (!_inSafeZone)) then {
			_inSafeZone = true;
			if (isPlayer player) then {
				systemChat format["Você Entrou na SafeZone %1. Você Não Pode Receber Dano.", (name player)];
			};
			player allowDamage false;
		};

		if ((_safeZone distance player > _dis) && (_inSafeZone)) then {
			_inSafeZone = false;
			if (isPlayer player) then {
				hintSilent parseText format ["<t size='3.4' color='#ff0000' shadow='0'>AVISO!</t> <t size='1.2'> Você Está Saindo Da SafeZone! Você Poderá Ser Ferido! </t>"];
			};
			player allowDamage true;
		};
	};

	sleep 1.5;
};
