/*
|                                                             |
|                ||Framework RJM Scripts||                    |
|    Proibido Usar Esse Arquivo Sem Permissão Dos Autores     |
|            Nosso Site: http://www.rjmscripts.rf.gd          |
|                                                             |
*/

_BVolume = param [0,0,[0]];

VAtualRadio = MusicVolume;

switch (_BVolume) do {
    case 1:{ 
		if (VAtualRadio IsEqualTo 1) ExitWith { hint 'A Rádio Já Está No Volume Máximo!'; };
		VAtualRadio = VAtualRadio + 0.10;
		//1 fadeMusic VAtualRadio;
		if (VAtualRadio > 1) then {VAtualRadio = 1;};
	};
	case 2:{
		if (VAtualRadio IsEqualTo 0.15) ExitWith { hint 'A Rádio Já Está No Volume Mínimo!'; };
		VAtualRadio = VAtualRadio - 0.10;
		//1 fadeMusic VAtualRadio;
		if (VAtualRadio < 0.15) then {VAtualRadio = 0.15;};
	};
};

 [VAtualRadio,(Vehicle Player)] remoteExec ["RJM_fnc_Volume",-2];