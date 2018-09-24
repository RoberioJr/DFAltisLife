#include "..\..\..\..\script_macros.hpp"
/*

	Author: RobérioJR & Medeiros
	Proibido Usar Esse Código Sem Permissão Dos Autores.
	
	Ajuda Para Editar:
    ctrlShow[ID,false]; - Desativa Botão
	ctrlShow[ID,true]; - Ativa Botão
	_Btn ctrlSetText "TEXTO"; - Coloca Texto No Botão
	_Btn buttonSetAction "SCRIPT/CHAMADA"; - Coloca Ação No Botão
	_Btn ctrlSetTooltip "TEXTO"; - Coloca Descrição No Botão
	
*/

Private ["_RjTipoRadio","_menu","_Stop","_SomP","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_vei"];
/* Definições */
#define Btn1 10101
#define Btn2 10102
#define Btn3 10103
#define Btn4 10104
#define Btn5 10105
#define Btn6 10106
#define Btn7 10107
#define BStp 101011
#define SomP 101012
#define VMas 10101234
#define VMen 10101235 
//#define NMsc 101013

disableSerialization;

_RjTipoRadio = param [0,0,[0]];

/* Série De Condições */
if (!alive player || dialog) exitWith {};
If (_RjTipoRadio IsEqualTo 2 && !(FETCH_CONST(life_donorlevel) in RJ_RadioDoador)) ExitWith {}; //Doador
if (IsNil "_RjTipoRadio") then {Hint "Tipo De Rádio Não Definida, Inserindo Configuração Padrão: Rádio Normal"; _RjTipoRadio = 1;};
if ((_RjTipoRadio isEqualTo 2) && !((driver (vehicle Player)) isEqualTo player)) ExitWith {hint "Você Não Está No Controle Do Veiculo!";};


Switch (_RjTipoRadio) Do {
    Case 1: {SystemChat 'Rádio Ligada';};
	Case 2: {SystemChat 'Caixa De Som Ligada';};
};

//SystemChat format["%1",_RjTipoRadio];

createDialog "RadioRJM";

_menu = findDisplay 10100;

_Stop = _menu displayCtrl BStp;
_VMas = _menu displayCtrl VMas;
_VMen = _menu displayCtrl VMen;
_SomP = _menu displayCtrl SomP;
_Btn1 = _menu displayCtrl Btn1;
_Btn2 = _menu displayCtrl Btn2;
_Btn3 = _menu displayCtrl Btn3;
_Btn4 = _menu displayCtrl Btn4;
_Btn5 = _menu displayCtrl Btn5;
_Btn6 = _menu displayCtrl Btn6;
_Btn7 = _menu displayCtrl Btn7;

_msc1 = RJ_nomeMusicas select 0;
_msc2 = RJ_nomeMusicas select 1;
_msc3 = RJ_nomeMusicas select 2;
_msc4 = RJ_nomeMusicas select 3;
_msc5 = RJ_nomeMusicas select 4;
_msc6 = RJ_nomeMusicas select 5;
 
 /* Definições dos Botões */

 /* Descrições */
_Stop ctrlSetTooltip "Parar A Musica";
//_SomP ctrlSetTooltip "Ligar Paredão";
_VMas ctrlSetTooltip "Aumentar Volume";
_VMen ctrlSetTooltip "Diminuir Volume";
_Btn1 ctrlSetTooltip _msc1;
_Btn2 ctrlSetTooltip _msc2;
_Btn3 ctrlSetTooltip _msc3;
_Btn4 ctrlSetTooltip _msc4;
_Btn5 ctrlSetTooltip _msc5;
_Btn6 ctrlSetTooltip _msc6;

 /* Texto Dos Botões */
 
//_NMsc ctrlSetText format['Tocando:%1',];

 /* Ações */
switch (_RjTipoRadio) do {
  /* Rádio Comum */
  Case 1: {
    _Stop buttonSetAction "[0] call RJM_fnc_radio;";
    _Btn1 buttonSetAction "[1] call RJM_fnc_radio;";
    _Btn2 buttonSetAction "[2] call RJM_fnc_radio;";
    _Btn3 buttonSetAction "[3] call RJM_fnc_radio;";
    _Btn4 buttonSetAction "[4] call RJM_fnc_radio;";
    _Btn5 buttonSetAction "[5] call RJM_fnc_radio;";
	_Btn6 buttonSetAction "[6] call RJM_fnc_radio;";
	//_SomP buttonSetAction "[2] Spawn RJM_fnc_MenuTroca;";
	_VMas buttonSetAction "[1] call RJM_fnc_VolumeAlterar;";
	_VMen buttonSetAction "[2] call RJM_fnc_VolumeAlterar;";
    };
  /* Rádio 3D (CAIXA DE SOM) */
  Case 2: {
    _Stop buttonSetAction "[0] call RJM_fnc_radioSom;";
    _Btn1 buttonSetAction "[1] call RJM_fnc_radioSom;";
    _Btn2 buttonSetAction "[2] call RJM_fnc_radioSom;";
    _Btn3 buttonSetAction "[3] call RJM_fnc_radioSom;";
    _Btn4 buttonSetAction "[4] call RJM_fnc_radioSom;";
    _Btn5 buttonSetAction "[5] call RJM_fnc_radioSom;";
	_Btn6 buttonSetAction "[6] call RJM_fnc_radioSom;";
	//_SomP buttonSetAction "[1] Spawn RJM_fnc_MenuTroca;";
    };
  //Default {CloseDialog 0;[1] call RJM_fnc_Menu; hint "Erro, Iniciando Rádio Normal!";}; 
};
  
  

  
  
  