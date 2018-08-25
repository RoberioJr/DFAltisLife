/*
|                                                             |
|                ||Framework RJM Scripts||                    |
|    Proibido Usar Esse Arquivo Sem Permissão Dos Autores     |
|            Nosso Site: http://www.rjmscripts.rf.gd          |
|                                                             |
*/

Private ["_VAtualRadio","_vei"];
_vei = (Vehicle Player);
_BVolume = param [0,0,[0]];
_VAtualRadio = MusicVolume;

switch (_BVolume) do {
    case 1:{ 
	if (_VAtualRadio IsEqualTo 1) ExitWith { hint 'A Rádio Já Está No Volume Máximo!'; };
	_VAtualRadio = _VAtualRadio + 0.15;
	//1 fadeMusic _VAtualRadio;
	if (_VAtualRadio > 1) then {_VAtualRadio = 1;};
	};
	case 2:{
    if (_VAtualRadio IsEqualTo 0.15) ExitWith { hint 'A Rádio Já Está No Volume Mínimo!'; };
	_VAtualRadio = _VAtualRadio - 0.15;
	//1 fadeMusic _VAtualRadio;
	if (_VAtualRadio < 0.15) then {_VAtualRadio = 0.15;};
	};
};
 [_VAtualRadio,_vei] remoteExec ["RJM_fnc_Volume",0];

