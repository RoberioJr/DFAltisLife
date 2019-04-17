/*

    Author: RobérioJR

*/

private ["_EH","_DentroDaArea","_Marcador","_Raio","_Capacete","_Uniforme","_Safe"];

_Marcador = _This Select 0;
_Raio = _This Select 1;
_Capacete = (getArray(missionConfigFile >> "RJ_CfgTrabalhos" >> "RJ_CapEUnifUranio")) Select 0;
_Uniforme = (getArray(missionConfigFile >> "RJ_CfgTrabalhos" >> "RJ_CapEUnifUranio")) Select 1;

_Safe = (GetMarkerPos _Marcador);
_DentroDaArea = false;

while {true} do {
	if (alive player) then {
		if ((_Safe distance player < _Raio) && (!_DentroDaArea)) then {
			_DentroDaArea = true;
			hintSilent parseText format ["<t size='3.4' color='#ff0000' shadow='0'>AVISO!</t> <t size='1.2'> Você Está Entrando Na Mina De Urânio! Você Deve Estar Com Os Trajes Corretos. </t>"];
			While {(_Safe distance player < _Raio)} Do {
			    If (!((Uniform Player) IsEqualTo _Uniforme) || !((Headgear Player) IsEqualTo _Capacete)) Then {
					Player SetDamage ((Damage Player) + 0.04);
				};
				Sleep 2;
			};
		};
		if ((_Safe distance player > _Raio) && (_DentroDaArea)) then {
			_DentroDaArea = false;
			systemChat "Você Saiu Da Mina De Urânio, Você Não Corre Perigo Agora.";
		};
	};
	sleep 3;
};

