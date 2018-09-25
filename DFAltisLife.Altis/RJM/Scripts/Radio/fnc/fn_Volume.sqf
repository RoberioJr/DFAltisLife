/*
|                                                             |
|                ||Framework RJM Scripts||                    |
|    Proibido Usar Esse Arquivo Sem Permissão Dos Autores     |
|            Nosso Site: http://www.rjmscripts.rf.gd          |
|                                                             |
*/
// Uso: [Volume,_Veiculo] remoteExec ["RJM_fnc_Volume",0];
// Altera O Volume Da Musica Para Todos Dos Jogadores Dentro De Um Determinado Veiculo

params [
    ["_Volume",0,[0]],
    ["_Veiculo",objNull,[objNull]]
];

if ((Vehicle player) IsEqualTo _Veiculo) then {
    1 fadeMusic _Volume;
};