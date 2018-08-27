/*

	Author: RobérioJR & Medeiros
	Proibido Usar Esse Código Sem Permissão Dos Autores.
	
*/

Private ['_TipoRadio'];

_TipoRadio = Param [0,0,[0]];
 CloseDialog 0;
 SystemChat 'Trocando Tipo De Rádio';
 Sleep 1;
Switch (_TipoRadio) Do {
    Case 1: { [1] Call RJM_fnc_Menu; };
	Case 2: { [2] Call RJM_fnc_Menu; };
};

