/*
    Author: RobérioJR
*/

Private ['_saude','_fome','_dono'];

_saude = round ((1 - (damage dog)) * 100);
_fome = round (RJ_FomeDog);
_dono = (Dog GetVariable "RJ_Dono");

	//--Congigurações terminadas--//	
hintSilent parseText format [
	"<t size='1' align='center' color='#FF0303'>Saúde: </t><t size='1' align='center'>%1&#37;</t><br/>"+
	"<t size='1' align='center' color='#A52424'>Fome: </t><t size='1' align='center'>%2&#37;</t><br/>"+
	"<t size='1' align='center' color='#12C7FD'>Dono: </t>" + "<t size='1' align='center'>%3</t><br/>"+
	"<t underline='true' shadow='1' align='center' size='1'><br/>Em Desenvolvimento By: RJ</t>",				
	_saude, //1
	_fome, //2
	_dono //3
];