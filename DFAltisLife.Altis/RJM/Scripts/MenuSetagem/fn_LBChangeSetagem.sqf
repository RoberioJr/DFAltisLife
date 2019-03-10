#include "..\..\..\script_macros.hpp"
/*

    Author: RobérioJr

*/

Private ['_jogador','_menu','_nome','_steamid','_nivelatual','_select','_patente'];
_jogador = lbData[3004,lbCurSel (3004)];
_jogador = call compile format ["%1", _jogador];

_menu = findDisplay 3000;
_nome = _menu displayCtrl 3001;
_steamid = _menu displayCtrl 3002;
_nivelatual = _menu displayCtrl 3003;

_select = If (Side _jogador IsEqualTo west) Then {0} Else {2};
If (Side _jogador IsEqualTo civilian) Then {
    _patente = "Civil";
} Else {
    _patente = (RJ_PatentesCFG Select (_jogador GetVariable ["RJ_Patente",0])) Select _select;
};

_nome ctrlSetText Format["Nome: %1",(name _jogador)];
_steamid ctrlSetText Format["SteamID: %1",(getPlayerUID _jogador)];
_nivelatual ctrlSetText Format["Atual: %1",_patente];