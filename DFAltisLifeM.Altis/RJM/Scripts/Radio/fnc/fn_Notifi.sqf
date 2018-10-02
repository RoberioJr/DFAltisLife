/*
|                                                             |
|                ||Framework RJM Scripts||                    |
|    Proibido Usar Esse Arquivo Sem Permissão Dos Autores     |
|            Nosso Site: http://www.rjmscripts.rf.gd          |
|                                                             |
*/
//Uso: ["MENSAGEM",VEICULO] remoteExec ["RJM_fnc_Notifi",0];
//Envia Uma Notificação Para Todos Os Jogadores Em Um Determinado Veiculo

params [
    ["_Mensagem","",[""]],
	["_veiculo",objNull,[objNull]]
];

if (_Mensagem isEqualTo "" || {IsNull _Veiculo}) exitWith {};

if ((Vehicle player) IsEqualTo _veiculo) then {
    titleText[_mensagem,"PLAIN"];
	RJMFIXNOME = _Mensagem;
};