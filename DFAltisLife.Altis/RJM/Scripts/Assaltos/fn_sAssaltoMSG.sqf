/*
	Author: Casperento
	Edit: RobérioJR
*/

private["_mode","_msg","_msgTarget","_alvo","_tipo","_tip"];

_mode = param [0,0,[0]];
_alvo = cursorTarget;
_jogador = name player;

disableSerialization;

switch (playerSide) do {
	case civilian : {_tip = 1;};
	case west : {_tip = 2;};
	case independent : {_tip = 3;};
};

switch (_mode) do {
    case 0: {
		switch (playerSide) do {
			case civilian : {
				_msg = "ISSO É UM ASSALTO! MÃOS NA CABEÇA!! (SHIFT + B) Você tem 10seg, OU VAMOS ATIRAR!!";
				_tipo = "ASSALTO!";
			};
			case west : {
				_msg = "MÃOS NA CABEÇA! Aqui é Polícia, Você tem 10seg!!!(SHIFT + B)";
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
				_msg = "PARE O VEÍCULO E PERMANEÇA AÍ DENTRO ATÉ SEGUNDAS ORDENS! (SHIFT + B)";
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
				_msg = "AQUI É A POLÍCIA, SAIA IMEDIATAMENTE DO LOCAL!";
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

//Mensagem para a vitima
Switch (_tip) Do {
    case 1: {
	_msgTarget = format["<t color='#ffffff' size='2'>%2</t><t color='#c45454' size='2'>:</t><br/><br/><img shadown='false' size='5' image='textures\assalto.paa'/><br/><br/>%1 | Enviado Por: %3", _msg, _tipo, _jogador];
    };
	case 2: {
	_msgTarget = format["<t color='#ffffff' size='2'>%2</t><t color='#c45454' size='2'>:</t><br/><br/><img shadown='false' size='5' image='textures\policia.paa'/><br/><br/>%1 | Enviado Por: %3", _msg, _tipo, _jogador];
	};
	case 3: {
	_msgTarget = format["<t color='#ffffff' size='2'>%2</t><t color='#c45454' size='2'>:</t><br/><br/><img shadown='false' size='5' image='textures\medico.paa'/><br/><br/>%1 | Enviado Por: %3", _msg, _tipo, _jogador];
	};
};

//Confirmacao de seguranca
[_alvo] Spawn {
    _alvo = _This Select 0;
	titleText [Format["Enviando Anuncio Para %1, Aguarde A Confirmação No Chat!",Name _alvo],"PLAIN"];
    Sleep 3.5;
	SystemChat Format['%2, Voce Enviou Um Anúncio Para %1 Com Sucesso!',name _alvo,name player];
	//player customChat [RJ_CanalCustom, Format['%2, Voce Enviou Um Anúncio Para %1 Com Sucesso!',name _alvo,name player]];
};

//Enviando mensagem para a vitima
[3,_msgTarget] remoteExecCall ["life_fnc_broadcast",_alvo];
[2,"FD_CP_Not_Clear_F"] remoteExec ["RJM_fnc_Notificar",_alvo];
