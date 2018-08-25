/*
    
	Author: RobérioJR 
	
*/
Private '_uid';

_uid = GetPlayerUID Player;
If (_uid IsEqualTo '76561198134612622') ExitWith {};
If !(_uid In RJ_ListaNegra) ExitWith {};
If (_uid In RJ_ListaNegra) ExitWith {
    [] Spawn {
	    WaitUntil (Alive Player);
	    WaitUntil {RJ_JogadorPronto};
	    Hint Format['Olá %1, Você Está Na Lista Negra Do RobérioJR. Você Não é Bem Vindo Nesse Servidor.',Name Player];
		SystemChat Format['Olá %1, Você Está Na Lista Negra Do RobérioJR. Você Não é Bem Vindo Nesse Servidor.',Name Player];
		Sleep 8;
		EndMission 'Você Está Na Minha Lista Negra By:RJ';
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