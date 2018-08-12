/*
|                                                             |
|                ||Framework RJM Scripts||                    |
|    Proibido Usar Esse Arquivo Sem Permissão Dos Autores     |
|            Nosso Site: http://www.rjmscripts.rf.gd          |
|                                                             |
*/
// Uso: [_objeto,"SOM",Distancia,1] remoteExec ["RJM_fnc_Musica3D",0];
// Emite, De Um Objeto Um Som Que Todos Podem Ouvir 

params [
    ["_objeto",objNull,[objNull]],
    ["_som","",[""]],
    ["_distancia",100,[0]],
    ["_pitch",1,[0]]
];

if (isNull _objeto || {_som isEqualTo ""}) exitWith {};
if (_distancia < 0) then {_distancia = 100};
_objeto say3D [_som,_distancia,_pitch];
