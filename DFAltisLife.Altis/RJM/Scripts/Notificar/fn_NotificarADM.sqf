/*

    Author: RobérioJR
	["MENSAGEM"] RemoteExec ["RJM_fnc_NotificarADM",0]

*/

Params [
    ["_Mensagem","",[""]]
];

If (_Mensagem IsEqualTo "") ExitWith {};
If (IsNil '_Mensagem') ExitWith {};

["Administrador", _Mensagem, [0, 0, 1, 1], [1, 1, 0, 1]] spawn RJM_fnc_createNotification;