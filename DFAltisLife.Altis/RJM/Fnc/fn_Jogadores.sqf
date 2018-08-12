/*
|                                                             |
|                ||Framework RJM Scripts||                    |
|    Proibido Usar Esse Arquivo Sem Permissão Dos Autores     |
|            Nosso Site: http://www.rjmscripts.rf.gd          |
|                                                             |
*/
// Uso: call RJM_fnc_Jogadores;
// Faz Uma Lista De Todos Os Jogadores Conectados

_jogadores = [];

{
	if (isPlayer _x) then {_jogadores append (_x)};
} forEach playableUnits;

_jogadores