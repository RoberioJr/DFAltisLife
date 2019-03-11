/*

    Author: RobérioJR

*/

private ["_EH","_DentroDaSafe","_Marcador","_Raio","_Safe"];

_Marcador = _This Select 0;
_Raio = _This Select 1;

_Safe = (GetMarkerPos _Marcador);
_DentroDaSafe = false;

while {true} do {
	if (alive player) then {
		if ((_Safe distance player < _Raio) && (!_DentroDaSafe)) then {
			if (PlayerSide isEqualto civilian) then {
				_EH = player addEventHandler ["fired", {deleteVehicle (_this select 6); titleText ["Armas/Granadas São proibidas na safezone!", "PLAIN", 3]; titleFadeOut 1; }];
			};
			_DentroDaSafe = true;
			RJ_JogadorNaSafe = True;
			systemChat format["Você entrou na safezone %1. Você não pode receber dano.", (name player)];
			player allowDamage false;
		};

		if ((_Safe distance player > _Raio) && (_DentroDaSafe)) then {
		    if (PlayerSide isEqualto civilian) then {
			    player removeEventHandler ["fired", _EH];
			};
			_DentroDaSafe = false;
			RJ_JogadorNaSafe = False;
			hintSilent parseText format ["<t size='3.4' color='#ff0000' shadow='0'>AVISO!</t> <t size='1.2'> Você está Saindo Da SafeZone! Você Poderá Ser Ferido! </t>"];
			player allowDamage true;
		};
	};
	sleep 2;
};

