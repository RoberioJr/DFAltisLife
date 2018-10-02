/*
|                                                             |
|                ||Framework RJM Scripts||                    |
|    Proibido Usar Esse Arquivo Sem Permissão Dos Autores     |
|            Nosso Site: http://www.rjmscripts.rf.gd          |
|                                                             |
*/
// Uso: ["SOM",_Veiculo] remoteExec ["RJM_fnc_Musica",0];
// Reproduz Uma Musica Para Todos Os Jogadores Em Um Determinado Veiculo

params [
    ["_musica","",[""]],
    ["_veiculo",objNull,[objNull]]
];
    
if (isNull _veiculo || {_musica isEqualTo ""}) exitWith {};

if ((Vehicle player) IsEqualTo _veiculo) then {
    if (_musica IsEqualTo "PARAR") ExitWith {playMusic '';};
    playMusic _musica;
};
