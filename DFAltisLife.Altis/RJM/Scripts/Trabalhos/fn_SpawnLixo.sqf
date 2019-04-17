/*

    Author: RobérioJr

*/

If (!IsServer) ExitWith {};

Private _SpawnPosLixo = (getArray(missionConfigFile >> "RJ_CfgTrabalhos" >> "RJ_SpawnsDeLixo"));
Private _Lixos = [];
Private _TiposLixos = ['Land_GarbageBags_F','Land_GarbagePallet_F','Land_GarbageHeap_04_F','Land_GarbageWashingMachine_F'];
Private _LixoObj = ObjNull;

While {True} Do {
    WaitUntil {(Count allPlayers) > 0};
	Diag_Log Format[':: Inciando Spawner De Lixos No Mapa ::',(Count _Lixos)];
	{
	    Private _Chance = round(Random 100);
	    If (_Chance >= 50) Then {
		    _LixoObj = (SelectRandom _TiposLixos) createVehicle _x;
			_LixoObj AllowDamage False;_LixoObj EnableSimulationGlobal False;
			_LixoObj SetVariable ["RJ_ItemVar",["lixo",(round(random 3)),True],True];
			_Lixos PushBack _LixoObj;
			Sleep 0.2;
		};
	} ForEach _SpawnPosLixo;
	Diag_Log Format[':: Spawn Finalizado - Lixos Criados: %1/%2 ::',(Count _Lixos),(Count _SpawnPosLixo)];
	Sleep (600 + round(Random 900)); //Min 10Mins - Max 25mins
	{ If !(IsNull _x) Then {DeleteVehicle _x;}; } ForEach _Lixos;
	_Lixos = [];
};
