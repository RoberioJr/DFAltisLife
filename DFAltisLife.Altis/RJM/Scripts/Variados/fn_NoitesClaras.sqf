/*

    Author: RobérioJr

*/

    _AjustarLuz = { //Fnc Privada
        RJ_AjustarBrilho = RJ_AjustarBrilho max 0 min 1;
        _Brilho = If (RJ_AjustarBrilho > 0) Then {200 * abs (1 - (2 ^ RJ_AjustarBrilho))} Else {0};
        RJ_Luz setLightAttenuation [10e10,(30000 / (_Brilho max 10e-10)),4.31918e-005,4.31918e-005];
        RJ_Luz setLightAmbient RJ_AjustarCor;
    };
    
    waitUntil {time > 0};
	
    If (missionNamespace getVariable ["RJ_NoiteClara",False]) ExitWith {systemChat "Noites Claras Já Iniciadas."};
    RJ_NoiteClara = True;
    
    RJ_AjustarBrilho = missionNamespace getVariable ["RJ_AjustarBrilho",1]; // edit the level of brightness here, set to 1, can be 0.1 to however high you want it
    RJ_AjustarCor = missionNamespace getVariable ["RJ_AjustarCor",[0.5,0.7,1]];

    If (!isNil "RJ_Luz") Then { deleteVehicle RJ_Luz };
    RJ_Luz = "#lightpoint" createVehicleLocal [0,0,0];
    RJ_Luz setLightBrightness 1;
    RJ_Luz setLightDayLight False;
    Call _AjustarLuz;

    for "_i" from 0 to 1 step 0 do {
        _AjustarBrilho = RJ_AjustarBrilho;
        _AjustarCor = RJ_AjustarCor;
        WaitUntil {!(_AjustarBrilho isEqualTo RJ_AjustarBrilho) || !(_AjustarCor isEqualTo RJ_AjustarCor)};
        Call _AjustarLuz;
    };
