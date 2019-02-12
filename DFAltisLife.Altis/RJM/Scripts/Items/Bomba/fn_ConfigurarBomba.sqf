/*

	Author: RobérioJR
	Proibido Usar Esse Código Sem Permissão Dos Autores.
	
	Ajuda Para Editar:
    ctrlShow[ID,false]; - Desativa Botão
	ctrlShow[ID,true]; - Ativa Botão
	_Btn ctrlSetText "TEXTO"; - Coloca Texto No Botão
	_Btn buttonSetAction "SCRIPT/CHAMADA"; - Coloca Ação No Botão
	_Btn ctrlSetTooltip "TEXTO"; - Coloca Descrição No Botão
	
*/
closeDialog 0;

if (!alive player) exitWith {};

disableSerialization;

createDialog "RJ_Bomba";

_Menu = findDisplay 4020;

_Slider = _Menu DisplayCtrl 4023;
_Botao = _Menu DisplayCtrl 4022;
_Info = _Menu DisplayCtrl 4021;

_Slider sliderSetRange [15,240];
_Slider sliderSetPosition 30;

_Info ctrlSetText "30 Segundos";

_Botao buttonSetAction "_S = (findDisplay 4020) DisplayCtrl 4023; _T = SliderPosition _S; [_T] Spawn RJM_fnc_Bomba;";