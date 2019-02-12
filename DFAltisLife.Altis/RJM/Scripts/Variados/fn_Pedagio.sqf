#include "..\..\..\script_macros.hpp"
/*

	Author: RobérioJR
	NPC: This addAction["<t color = '#40FF00'>Pagar Pedágio - R$1000</t>",RJM_fnc_Pedagio,"",0,false,false,"","",12];
	GATE: this setVariable ['bis_disabled_Door_1',1,true]; this setVariable ['bis_disabled_Door_2',1,true];
	
*/

_pagamento = 1000;

if (PlayerSide IsEqualTo civilian) then {
	if (CASH < _pagamento) ExitWith { hint "Você não tem dinheiro suficiente para pagar o pedágio!"; };
	CASH = CASH - _pagamento;
	TitleText [Format["Você Pagou R$%1 Pelo Pedágio!",_pagamento],"PLAIN"];
} Else { TitleText ["Pedágio Gratuito Para Serviços Publicos!","PLAIN"]; };

_porta = nearestObject [player, "Land_Net_Fence_Gate_F"];

 _porta animate ["Door_1_rot", 1];
 _porta animate ["Door_2_rot", 1];
 sleep 7;
 _porta animate ["Door_1_rot", 0];
 _porta animate ["Door_2_rot", 0];
