/*

    Author: RobérioJr
    ["MSG",0] RemoteExec ["RJM_fnc_LogServidor",2]
	
*/

_Mensagem = _This Select 0;
_Tipo = _This Select 1;

If ((IsNil "_Mensagem") || (_Mensagem IsEqualTo "") || (IsNil "_Tipo")) ExitWith {};

Switch (_Tipo) Do 
{
    Case 0: 
	{
        Diag_Log Format["RJLOG: %1",_Mensagem];
	};
	Case 1: 
	{
        Diag_Log _Mensagem;
	};
};