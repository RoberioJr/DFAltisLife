/*

    Author: RobérioJR

*/
Private ['_Loadout','_Pos','_Dir','_handle','_Grana','_Banco'];

 If (!JogadorNoModoAdmin) Then {
	JogadorNoModoAdmin = True;
	_Loadout = GetUnitLoadout Player;
	_Pos = visiblePositionASL player;
	_Dir = getDir player;
	_Grana = RJM_GRANA;
	_Banco = RJM_BANCO;
	RJ_DadosModoAdmin = [_Loadout,_Pos,_Dir,_Grana,_Banco];
	RemoveBackpack player;
	RemoveUniform Player;
	RemoveGoggles player;
	RemoveVest Player;
	RemoveHeadGear player;
	RemoveAllWeapons player; 
	[] Spawn {
	    Private ['_RoupasVR'];
        _RoupasVR = ['U_I_Protagonist_VR','U_O_Protagonist_VR','U_B_Protagonist_VR','U_C_Protagonist_VR'];
		player ForceAddUniform (SelectRandom _RoupasVR);
	    While {JogadorNoModoAdmin} Do {
		    sleep 3;
			if (!JogadorNoModoAdmin) ExitWith {};
			player ForceAddUniform (SelectRandom _RoupasVR);
		};
	};
	[3,Format["%1 Entrou No Modo Administrador!",Name player]] RemoteExec ["RJM_fnc_Notificar",0];
 } Else {
    JogadorNoModoAdmin = False;
	_handle = [] spawn life_fnc_stripDownPlayer;
    waitUntil {scriptDone _handle};
	player setUnitLoadout (RJ_DadosModoAdmin select 0);
	player setPosASL (RJ_DadosModoAdmin select 1);
    player setDir (RJ_DadosModoAdmin select 2);
	RJM_GRANA = (RJ_DadosModoAdmin select 3);
	RJM_BANCO = (RJ_DadosModoAdmin select 4);
	[3,Format["%1 Saiu Do Modo Administrador!",Name player]] RemoteExec ["RJM_fnc_Notificar",0];
 };
 
 
 