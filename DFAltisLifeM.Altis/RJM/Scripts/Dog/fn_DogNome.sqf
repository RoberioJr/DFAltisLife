/*

    Author: RobérioJR
	
*/

Private ['_Nome'];

If !(cursorTarget IsEqualTo "Fin_random_F") ExitWith {};

_Nome = (cursorTarget GetVariable "RJ_Dono");

hintSilent parseText format [
	"<t size='1' align='center' color='#12C7FD'>Dono: </t>" + "<t size='1' align='center'>%1</t><br/>"+
	"<t underline='true' shadow='1' align='center' size='1'><br/>Em Desenvolvimento By: RJ</t>",				
	_Nome
];