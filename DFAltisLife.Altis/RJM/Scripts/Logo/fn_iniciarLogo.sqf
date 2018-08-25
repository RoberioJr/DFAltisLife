/*

    Author: RobérioJR
	
*/

    /* A Logo Deve Estar No Formato: (.Paa)! */
_DiretorioDaLogo = "RJM\Recursos\Icones\BrasaoDF_P.paa";

    /* Não Editar Abaixo */
	
[_DiretorioDaLogo] Spawn
{
    DisableSerialization;
    _DiretorioDaLogo = _this select 0;
    WaitUntil { uiSleep 1; !(isNull(FindDisplay 46)); };
    (["LogoDoServidor"] call BIS_fnc_rscLayer) cutrsc ["LogoDoServidor","plain"];
    _display = uiNamespace getVariable "RJ_Logo";
    if !(typeName _display IsEqualTo "DISPLAY") ExitWith { 
	    SystemChat"RJ: Logo Do Servidor Não Foi Carregada..."; 
	};
    WaitUntil { uiSleep 1; !(isNull _display) };
    _imageHolder = _display displayCtrl 1200;
    _imageHolder ctrlSetText _DiretorioDaLogo;
};
