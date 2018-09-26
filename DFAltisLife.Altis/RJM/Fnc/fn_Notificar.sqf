/*

    Author: RobérioJR
	Tipo 1 - Mensagem
	Tipo 2 - Som
	Ex: [1,"VAI TOMAR NO CU"] RemoteExec ["RJM_fnc_Notificar",_Jogador];
	
*/
Private ['_Tipo','_Conteudo'];

Params [
    ["_Tipo",0,[0]],
    ["_Conteudo","",[""]]
];

If (_Conteudo IsEqualTo "") ExitWith {};

Switch (_Tipo) Do 
{
    Case 1: 
	{ 
	    titleText[_Conteudo,"PLAIN"];
	};
	Case 2: 
	{ 
	    playSound _Conteudo;
	};
	Case 3:
	{
	    SystemChat _Conteudo;
	};
	Case 4:
	{
	    Hint _Conteudo;
	};
};