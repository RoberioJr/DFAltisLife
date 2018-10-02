/*
|                                                             |
|                ||Framework RJM Scripts||                    |
|    Proibido Usar Esse Arquivo Sem Permissão Dos Autores     |
|            Nosso Site: http://www.rjmscripts.rf.gd          |
|                                                             |
*/
// Uso: [Facção,Objeto,Distancia] call RJM_fnc_UnidadesPerto;
// EX: if(([civilian,_vehicle,10] call RJM_fnc_UnidadesPerto)) exitWith {hint "RJ ANTI-DUPE: Há Um Jogador Por Perto";};

private ["_faccao","_posicao","_raio","_ret"];
_faccao = [_this,0,sideUnknown,[sideUnknown]] call BIS_fnc_param;
_posicao = [_this,1,(getPos player),[[]]] call BIS_fnc_param;
_raio = [_this,2,30,[0]] call BIS_fnc_param;
_ret = false;

if (_faccao isEqualTo sideUnknown) exitWith {_ret};

_ret = {!(_x isEqualTo player) && side _x isEqualTo _faccao && alive _x && _posicao distance _x < _raio} count playableUnits > 0;
_ret;