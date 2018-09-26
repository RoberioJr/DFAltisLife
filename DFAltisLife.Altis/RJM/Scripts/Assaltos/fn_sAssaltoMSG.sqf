/*
	Author: Casperento
	Edit: RobérioJR
*/

private["_mode","_msg","_msgTarget","_alvo","_tipo"];

_mode = param [0,0,[0]];
_alvo = cursorTarget;
_jogador = name player;

disableSerialization;

switch (_mode) do {
    case 0: {
		switch (playerSide) do {
			case civilian : {
				_msg = "ISSO É UM ASSALTO! MÃOS NA CABEÇA!! (SHIFT + B) DOU 10seg, OU VAMOS ATIRAR!!";
				_tipo = "ASSALTO!";
			};
			case west : {
				_msg = "MÃOS NA CABEÇA! (SHIFT + B)";
				_tipo = "POLÍCIA";
			};
			case independent : {
				_msg = "Levarei você ao Hospital por morrer em combate!";
				_tipo = "MÉDICO";
			};
		};
	};
	case 1: {
		switch (playerSide) do {
			case civilian : {
				_msg = "ISSO É UM ASSALTO! PARE O VEICULO E FIQUE DENTRO!!.";
			    _tipo = "ASSALTO!";
			};
			case west : {
				_msg = "PARE O VEÍCULO E FIQUE DENTRO ATÉ SEGUNDAS ORDENS! (SHIFT + B)";
				_tipo = "POLÍCIA";
			};
			case independent : {
				_msg = "Você sofreu um acidente, portanto poderá continuar com seu ROLEPLAY. Está liberado.";
			    _tipo = "MÉDICO";
			};
		};
	};
	case 2: {
		switch (playerSide) do {
			case civilian : {
				_msg = "CAI FORA RAPÁ!! Não Fode!!";
				_tipo = "ATENÇÃO!";
			};
			case west : {
				_msg = "SAIA IMEDIATAMENTE DO LOCAL!";
				_tipo = "POLÍCIA";
			};
			case independent : {
				_msg = "Afaste-se do local e me deixe trabalhar. Obrigado!";
				_tipo = "MÉDICO";
			};
		};
	};
};

if(_msg isEqualTo "") exitWith {};

//Confirmacao de seguranca
[0,format["%2, voce enviou Um Anúncio para %1 com sucesso !",name _alvo,name player]] remoteExecCall ["life_fnc_broadcast",player];

//Mensagem para a vitima
//_msgTarget = format["%1",_msg];
_msgTarget = format["<t color='#ffffff' size='2'>%2</t><t color='#c45454' size='2'>:</t><br/><br/><img shadown='false' size='5' image='textures\atencao.paa'/><br/><br/>%1 | Enviado Por: %3", _msg, _tipo, _jogador];
//_msgTarget = format["<t color='#ffffff' size='2'>ALERTA</t><br/><br/><img shadown='false' size='10' image='textures\SEUBANNER.jpg'/><br/><br/><t color='#fffc00' size='2'> %1 </t><br/><t color='#ff0000' size='2'>*BY-CASPERENTO*</t>",_msg];


//Enviando mensagem para a vitima
//[2,_msgTarget] remoteExecCall ["life_fnc_broadcast",_alvo];
[3,_msgTarget] remoteExecCall ["life_fnc_broadcast",_alvo];
[2,"FD_CP_Not_Clear_F"] remoteExec ["RJM_fnc_Notificar",_alvo];
