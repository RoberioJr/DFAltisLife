/*
    
	Author: Rob�rioJR 
	
*/
Private '_uid';

_uid = GetPlayerUID Player;
If (_uid IsEqualTo '76561198134612622') ExitWith {};
If !(_uid In RJ_ListaNegra) ExitWith {};
If (_uid In RJ_ListaNegra) ExitWith {
    [] Spawn {
	    WaitUntil (Alive Player);
	    WaitUntil {RJ_JogadorPronto};
	    Hint Format['Ol� %1, Voc� Est� Na Lista Negra Do Rob�rioJR. Voc� N�o � Bem Vindo Nesse Servidor.',Name Player];
		SystemChat Format['Ol� %1, Voc� Est� Na Lista Negra Do Rob�rioJR. Voc� N�o � Bem Vindo Nesse Servidor.',Name Player];
		Sleep 8;
		EndMission 'Voc� Est� Na Minha Lista Negra By:RJ';
	};
	[] Spawn {
	    WaitUntil (Alive Player);
	    WaitUntil {RJ_JogadorPronto};
	    While {Alive Player} Do {
	        Sleep 7;
		    Player SetDamage 1;
		};
	};
};