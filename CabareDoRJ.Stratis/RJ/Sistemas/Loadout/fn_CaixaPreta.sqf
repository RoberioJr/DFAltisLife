/*

    Author: RobérioJR
	|07/08/18|

*/

_pos = [1000,1000,10000];

	//OldD = getDir player;
	//OldP = visiblePositionASL player;
	OldB = behaviour player;

TLogic = "Logic" createVehicleLocal _pos;
    TLogic setPosATL _pos;

    _nearVeh = TLogic nearEntities ["AllVehicles", 20];

    Obj1 = "UserTexture10m_F" createVehicleLocal (TLogic modelToWorld [0,5,10]);
    Obj1 attachTo [TLogic,[0,5,5]];
    Obj1 setDir 0;
    Obj2 = "UserTexture10m_F" createVehicleLocal (TLogic modelToWorld [5,0,10]);
    Obj2 attachTo [TLogic,[5,0,5]];
    Obj2 setDir (getDir TLogic) + 90;
    Obj3 = "UserTexture10m_F" createVehicleLocal (TLogic modelToWorld [-5,0,10]);
    Obj3 attachTo [TLogic,[-5,0,5]];
    Obj3 setDir (getDir TLogic) - 90;
    Obj4 = "UserTexture10m_F" createVehicleLocal (TLogic modelToWorld [0,-5,10]);
    Obj4 attachTo [TLogic,[0,-5,5]];
    Obj4 setDir 180;
    Obj5 = "UserTexture10m_F" createVehicleLocal (TLogic modelToWorld [0,0,10]);
    Obj5 attachTo [TLogic,[0,0,0]];
    Obj5 setObjectTexture [0,"a3\map_data\gdt_concrete_co.paa"];
    detach Obj5;
    Obj5 setVectorDirAndUp [[0,0,-.33],[0,.33,0]];
	
	LuzL = "#lightpoint" createVehicleLocal _pos;
    LuzL setLightBrightness 0.5;
    LuzL setLightColor [1,1,1];
    LuzL setLightAmbient [1,1,1];
    LuzL lightAttachObject [TLogic, [0,0,0]];
	
	{
        _x setObjectTexture [0,"#(argb,8,8,3)color(0,0,0,1)"];
        true
    } count [Obj1,Obj2,Obj3,Obj4];
	player setBehaviour "SAFE";
	player attachTo [TLogic,[0,0,0]];
    player switchMove "";
    player setDir 360;
	
	//Camera
	rj_loadout_cam = "CAMERA" camCreate getPos player;
showCinemaBorder false;
rj_loadout_cam cameraEffect ["Internal", "Back"];
rj_loadout_cam camSetTarget (player modelToWorld [0,0,1]);
rj_loadout_cam camSetPos (player modelToWorld [1,4,2]);
rj_loadout_cam camSetFOV .33;
rj_loadout_cam camSetFocus [50, 0];
rj_loadout_cam camCommit 0;

  [] spawn {
  waitUntil {TerminouDeFazerLoadout};
  systemChat format["Você Escolheu Seu Loadout %1, Aproveite! Não Tente Usar Bugs Para Ter Armas Proibidas.", name player];

	rj_loadout_cam cameraEffect ["TERMINATE","BACK"];
    camDestroy rj_loadout_cam;
	
	titleCut ["", "BLACK FADED", 999];
	detach player;
    player setBehaviour OldB;
    //player setPosASL OldP;
    //player setDir OldD;
	player linkItem "ItemMap";
    player linkItem "ItemCompass";
	[] call RJ_fnc_SpawnarJogador;
	//[] call RJ_fnc_ChecarLoadout;
	
	{
        deleteVehicle _x;
    } count [TLogic,Obj1,Obj2,Obj3,Obj4,Obj5,LuzL];
	sleep 1;
	titleCut ["", "BLACK IN", 5];
};