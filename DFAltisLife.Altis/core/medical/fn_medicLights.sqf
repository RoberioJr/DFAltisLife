/*
    File: fn_medicLights.sqf
    Author: mindstorm, modified by Adanteh
    Link: http://forums.bistudio.com/showthread.php?157474-Offroad-Police-sirens-lights-and-underglow

    Description:
    Adds the light effect to cop vehicles, specifically the offroad.
*/

params [
    ["_vehicle", objNull, [objNull]],
    ["_lightTime", 0.22, [0]]
];

if (isNil "_vehicle" || {isNull _vehicle || {!(_vehicle getVariable "lights")}}) exitWith {};

private _lightRed = [20, 0.0, 0.0];
private _lightBlue = [20,20,20];


_lightLeft = "#lightpoint" createVehicleLocal getPos _vehicle;
sleep 0.2;
_lightLeft setLightColor _lightRed;
_lightLeft setLightBrightness 0.2;
_lightLeft setLightAmbient [0.1,0.1,1];

private _lightLeft_1 = "#lightpoint" createVehicleLocal getPos _vehicle;
sleep 0.2;
_lightLeft_1 setLightColor _lightRed;
_lightLeft_1 setLightBrightness 0.2;
_lightLeft_1 setLightAmbient [0.1,0.1,1];

private _lightLeft_2 = "#lightpoint" createVehicleLocal getPos _vehicle;
sleep 0.2;
_lightLeft_2 setLightColor _lightRed;
_lightLeft_2 setLightBrightness 0.2;
_lightLeft_2 setLightAmbient [0.1,0.1,1];

private _lightLeft_3 = "#lightpoint" createVehicleLocal getPos _vehicle;
sleep 0.2;
_lightLeft_3 setLightColor _lightRed;
_lightLeft_3 setLightBrightness 0.2;
_lightLeft_3 setLightAmbient [0.1,0.1,1];

private _lightLeft_4 = "#lightpoint" createVehicleLocal getPos _vehicle;
sleep 0.2;
_lightLeft_4 setLightColor _lightBlue;
_lightLeft_4 setLightBrightness 0.2;
_lightLeft_4 setLightAmbient [0.1,0.1,1];

private _lightLeft_5 = "#lightpoint" createVehicleLocal getPos _vehicle;
sleep 0.2;
_lightLeft_5 setLightColor _lightBlue;
_lightLeft_5 setLightBrightness 0.2;
_lightLeft_5 setLightAmbient [0.1,0.1,1];

private _lightLeft_6 = "#lightpoint" createVehicleLocal getPos _vehicle;
sleep 0.2;
_lightLeft_6 setLightColor _lightBlue;
_lightLeft_6 setLightBrightness 0.2;
_lightLeft_6 setLightAmbient [0.1,0.1,1];

switch (typeOf _vehicle) do {
    case "C_Offroad_01_F": {//----------------------------------------------OFFROAD
        _lightLeft lightAttachObject [_vehicle, [-0.4, 0.0, 0.56]];
		_lightLeft_1 lightAttachObject [_vehicle, [0.0, 0.0, 0.56]];
		_lightLeft_2 lightAttachObject [_vehicle, [-0.2, 0.0, 0.56]];
		_lightLeft_3 lightAttachObject [_vehicle, [-0.752, -2.997, -0.373]];
		_lightLeft_4 lightAttachObject [_vehicle, [-0.3, 0.0, 0.56]];
		_lightLeft_5 lightAttachObject [_vehicle, [-0.752, 2.203, -0.373]];
		_lightLeft_6 lightAttachObject [_vehicle, [-0.152, 2.603, -0.473]];
    };

    case "C_Van_02_medevac_F": {//----------------------------------------------AMBULANCIA
        _lightLeft lightAttachObject [_vehicle, [-0.4, 1.598, 1.190]];
        _lightLeft_1 lightAttachObject [_vehicle, [-0.4, -2.952, 1.190]];
        _lightLeft_2 lightAttachObject [_vehicle, [-0.9, 0.1, 0.927]];
        _lightLeft_3 lightAttachObject [_vehicle, [-0.9, -2.85, 0.927]];
        _lightLeft_4 lightAttachObject [_vehicle, [-0.9, 1.6, 0.927]];
        _lightLeft_5 lightAttachObject [_vehicle, [-0.9, -1.35, 0.927]];
        _lightLeft_6 lightAttachObject [_vehicle, [-0.4, 4.05, -0.573]];
    };
	
	case "B_Heli_Light_01_F": {//----------------------------------------------HUMINBIRD
        _lightLeft lightAttachObject [_vehicle, [0, 200, 400]];
        _lightLeft_1 lightAttachObject [_vehicle, [0, 200, 400]];
        _lightLeft_2 lightAttachObject [_vehicle, [0, 200, 400]];
        _lightLeft_3 lightAttachObject [_vehicle, [0, 200, 400]];
        _lightLeft_4 lightAttachObject [_vehicle, [-1.05, 2.399, -1.573]];
        _lightLeft_5 lightAttachObject [_vehicle, [0, 200, 400]];
        _lightLeft_6 lightAttachObject [_vehicle, [0, -4.6, 0.877]];
    };
	
	case "B_MRAP_01_F": {//----------------------------------------------HUNTER
        _lightLeft lightAttachObject [_vehicle, [1.1, -4.25, -0.823]];
        _lightLeft_1 lightAttachObject [_vehicle, [1.1, -4.25, -0.823]];
        _lightLeft_2 lightAttachObject [_vehicle, [0.95, -2.75, 0.527]];
        _lightLeft_3 lightAttachObject [_vehicle, [0.85, -0.95, 0.527]];
        _lightLeft_4 lightAttachObject [_vehicle, [0.6, 1.4, -0.673]];
        _lightLeft_5 lightAttachObject [_vehicle, [0.35, -0.95, 0.527]];
        _lightLeft_6 lightAttachObject [_vehicle, [1.1, 1.4, -0.673]];
    };
	
    case "C_SUV_01_F": {//----------------------------------------------SUV
        _lightLeft lightAttachObject [_vehicle, [-0.8, -2.8, -0.123]];
        _lightLeft_1 lightAttachObject [_vehicle, [-0.8, -2.8, -0.123]];
        _lightLeft_2 lightAttachObject [_vehicle, [-0.55, -0.101, 0.327]];
        _lightLeft_3 lightAttachObject [_vehicle, [-0.55, -0.101, 0.327]];
        _lightLeft_4 lightAttachObject [_vehicle, [-0.25, -0.101, 0.327]];
        _lightLeft_5 lightAttachObject [_vehicle, [-1.1, 0.4, -0.023]];
        _lightLeft_6 lightAttachObject [_vehicle, [-0.35, 2.4, -0.573]];
    };
	
    case "C_Hatchback_01_sport_F": {//----------------------------------------------HATCHBACK
        _lightLeft lightAttachObject [_vehicle, [0.7, -2.2, -0.323]];
        _lightLeft_1 lightAttachObject [_vehicle, [0.7, -2.2, -0.323]];
        _lightLeft_2 lightAttachObject [_vehicle, [0.5, 0, 0.177]];
        _lightLeft_3 lightAttachObject [_vehicle, [0.5, 0, 0.177]];
        _lightLeft_4 lightAttachObject [_vehicle, [0.3, 0, 0.177]];
        _lightLeft_5 lightAttachObject [_vehicle, [0.6, 1.9, -0.5]];
        _lightLeft_6 lightAttachObject [_vehicle, [0.6, 1.9, -0.5]];
    };
};

_lightLeft setLightAttenuation [0.181, 0, 1000, 130];
_lightLeft setLightIntensity 10;
_lightLeft setLightFlareSize 0.38;
_lightLeft setLightFlareMaxDistance 150;
_lightLeft setLightUseFlare true;

_lightLeft_1 setLightAttenuation [0.181, 0, 1000, 130];
_lightLeft_1 setLightIntensity 10;
_lightLeft_1 setLightFlareSize 0.38;
_lightLeft_1 setLightFlareMaxDistance 150;
_lightLeft_1 setLightUseFlare true;

_lightLeft_2 setLightAttenuation [0.181, 0, 1000, 130];
_lightLeft_2 setLightIntensity 10;
_lightLeft_2 setLightFlareSize 0.38;
_lightLeft_2 setLightFlareMaxDistance 150;
_lightLeft_2 setLightUseFlare true;

_lightLeft_3 setLightAttenuation [0.181, 0, 1000, 130];
_lightLeft_3 setLightIntensity 10;
_lightLeft_3 setLightFlareSize 0.38;
_lightLeft_3 setLightFlareMaxDistance 150;
_lightLeft_3 setLightUseFlare true;

_lightLeft_4 setLightAttenuation [0.181, 0, 1000, 130];
_lightLeft_4 setLightIntensity 10;
_lightLeft_4 setLightFlareSize 0.38;
_lightLeft_4 setLightFlareMaxDistance 150;
_lightLeft_4 setLightUseFlare true;

_lightLeft_5 setLightAttenuation [0.181, 0, 1000, 130];
_lightLeft_5 setLightIntensity 10;
_lightLeft_5 setLightFlareSize 0.38;
_lightLeft_5 setLightFlareMaxDistance 150;
_lightLeft_5 setLightUseFlare true;

_lightLeft_6 setLightAttenuation [0.181, 0, 1000, 130];
_lightLeft_6 setLightIntensity 10;
_lightLeft_6 setLightFlareSize 0.38;
_lightLeft_6 setLightFlareMaxDistance 150;
_lightLeft_6 setLightUseFlare true;


_lightRight = "#lightpoint" createVehicleLocal getPos _vehicle;
sleep 0.2;
_lightRight setLightColor _lightRed;
_lightRight setLightBrightness 0.2;
_lightRight setLightAmbient [0.1,0.1,1];

private _lightRight_1 = "#lightpoint" createVehicleLocal getPos _vehicle;
sleep 0.2;
_lightRight_1 setLightColor _lightRed;
_lightRight_1 setLightBrightness 0.2;
_lightRight_1 setLightAmbient [0.1,0.1,1];

private _lightRight_2 = "#lightpoint" createVehicleLocal getPos _vehicle;
sleep 0.2;
_lightRight_2 setLightColor _lightRed;
_lightRight_2 setLightBrightness 0.2;
_lightRight_2 setLightAmbient [0.1,0.1,1];

private _lightRight_3 = "#lightpoint" createVehicleLocal getPos _vehicle;
sleep 0.2;
_lightRight_3 setLightColor _lightRed;
_lightRight_3 setLightBrightness 0.2;
_lightRight_3 setLightAmbient [0.1,0.1,1];

private _lightRight_4 = "#lightpoint" createVehicleLocal getPos _vehicle;
sleep 0.2;
_lightRight_4 setLightColor _lightBlue;
_lightRight_4 setLightBrightness 0.2;
_lightRight_4 setLightAmbient [0.1,0.1,1];

private _lightRight_5 = "#lightpoint" createVehicleLocal getPos _vehicle;
sleep 0.2;
_lightRight_5 setLightColor _lightBlue;
_lightRight_5 setLightBrightness 0.2;
_lightRight_5 setLightAmbient [0.1,0.1,1];

private _lightRight_6 = "#lightpoint" createVehicleLocal getPos _vehicle;
sleep 0.2;
_lightRight_6 setLightColor _lightBlue;
_lightRight_6 setLightBrightness 0.2;
_lightRight_6 setLightAmbient [0.1,0.1,1];


switch (typeOf _vehicle) do {
    case "C_Offroad_01_F": {//----------------------------------------------OFFROAD
        _lightRight lightAttachObject [_vehicle, [0.4, 0.0, 0.56]];
		_lightRight_1 lightAttachObject [_vehicle, [0.0, 0.0, 0.56]];
		_lightRight_2 lightAttachObject [_vehicle, [0.2, 0.0, 0.56]];
		_lightRight_3 lightAttachObject [_vehicle, [0.752, -2.997, -0.373]];
		_lightRight_4 lightAttachObject [_vehicle, [0.3, 0.0, 0.56]];
		_lightRight_5 lightAttachObject [_vehicle, [0.752, 2.203, -0.373]];
		_lightRight_6 lightAttachObject [_vehicle, [0.152, 2.603, -0.473]];
    };
    
    case "C_Van_02_medevac_F": {//----------------------------------------------AMBULANCIA
        _lightRight lightAttachObject [_vehicle, [0.4, 1.598, 1.190]];
		_lightRight_1 lightAttachObject [_vehicle, [0.4, -2.952, 1.190]];
        _lightRight_2 lightAttachObject [_vehicle, [0.9, 0.1, 0.927]];
        _lightRight_3 lightAttachObject [_vehicle, [0.9, -2.85, 0.927]];
        _lightRight_4 lightAttachObject [_vehicle, [0.9, 1.6, 0.927]];
        _lightRight_5 lightAttachObject [_vehicle, [0.9, -1.35, 0.927]];
        _lightRight_6 lightAttachObject [_vehicle, [0.4, 4.05, -0.573]];
    };
	
	case "B_Heli_Light_01_F": {//----------------------------------------------HUMINBIRD
        _lightRight lightAttachObject [_vehicle, [0, 200, 400]];
        _lightRight_1 lightAttachObject [_vehicle, [0, 200, 400]];
        _lightRight_2 lightAttachObject [_vehicle, [0, 200, 400]];
        _lightRight_3 lightAttachObject [_vehicle, [1.05, 2.399, -1.573]];
        _lightRight_4 lightAttachObject [_vehicle, [0, 200, 400]];
        _lightRight_5 lightAttachObject [_vehicle, [0, 0.499, 1.077]];
        _lightRight_6 lightAttachObject [_vehicle, [0, 200, 400]];
    };
	
	case "B_MRAP_01_F": {//----------------------------------------------HUNTER
        _lightRight lightAttachObject [_vehicle, [-1.1, -4.25, -0.823]];
        _lightRight_1 lightAttachObject [_vehicle, [-1.1, -4.25, -0.823]];
        _lightRight_2 lightAttachObject [_vehicle, [-0.95, -2.75, 0.527]];
        _lightRight_3 lightAttachObject [_vehicle, [-0.85, -0.95, 0.527]];
        _lightRight_4 lightAttachObject [_vehicle, [-0.6, 1.4, -0.673]];
        _lightRight_5 lightAttachObject [_vehicle, [-0.35, -0.95, 0.527]];
        _lightRight_6 lightAttachObject [_vehicle, [-1.1, 1.4, -0.673]];
    };
	
    case "C_SUV_01_F": {//----------------------------------------------SUV
        _lightRight lightAttachObject [_vehicle, [0.8, -2.8, -0.123]];
        _lightRight_1 lightAttachObject [_vehicle, [0.8, -2.8, -0.123]];
        _lightRight_2 lightAttachObject [_vehicle, [0.55, -0.101, 0.327]];
        _lightRight_3 lightAttachObject [_vehicle, [0.55, -0.101, 0.327]];
        _lightRight_4 lightAttachObject [_vehicle, [0.25, -0.101, 0.327]];
        _lightRight_5 lightAttachObject [_vehicle, [1.1, 0.4, -0.023]];
        _lightRight_6 lightAttachObject [_vehicle, [0.35, 2.4, -0.573]];
    };
	
    case "C_Hatchback_01_sport_F": {//----------------------------------------------HATCHBACK
        _lightRight lightAttachObject [_vehicle, [-0.7, -2.2, -0.323]];
        _lightRight_1 lightAttachObject [_vehicle, [-0.7, -2.2, -0.323]];
        _lightRight_2 lightAttachObject [_vehicle, [-0.5, 0, 0.177]];
        _lightRight_3 lightAttachObject [_vehicle, [-0.5, 0, 0.177]];
        _lightRight_4 lightAttachObject [_vehicle, [-0.3, 0, 0.177]];
        _lightRight_5 lightAttachObject [_vehicle, [-0.6, 1.9, -0.5]];
        _lightRight_6 lightAttachObject [_vehicle, [-0.6, 1.9, -0.5]];
    };
};

_lightRight setLightAttenuation [0.181, 0, 1000, 130];
_lightRight setLightIntensity 10;
_lightRight setLightFlareSize 0.38;
_lightRight setLightFlareMaxDistance 150;
_lightRight setLightUseFlare true;

_lightRight_1 setLightAttenuation [0.181, 0, 1000, 130];
_lightRight_1 setLightIntensity 10;
_lightRight_1 setLightFlareSize 0.38;
_lightRight_1 setLightFlareMaxDistance 150;
_lightRight_1 setLightUseFlare true;

_lightRight_2 setLightAttenuation [0.181, 0, 1000, 130];
_lightRight_2 setLightIntensity 10;
_lightRight_2 setLightFlareSize 0.38;
_lightRight_2 setLightFlareMaxDistance 150;
_lightRight_2 setLightUseFlare true;

_lightRight_3 setLightAttenuation [0.181, 0, 1000, 130];
_lightRight_3 setLightIntensity 10;
_lightRight_3 setLightFlareSize 0.38;
_lightRight_3 setLightFlareMaxDistance 150;
_lightRight_3 setLightUseFlare true;

_lightRight_4 setLightAttenuation [0.181, 0, 1000, 130];
_lightRight_4 setLightIntensity 10;
_lightRight_4 setLightFlareSize 0.38;
_lightRight_4 setLightFlareMaxDistance 150;
_lightRight_4 setLightUseFlare true;

_lightRight_5 setLightAttenuation [0.181, 0, 1000, 130];
_lightRight_5 setLightIntensity 10;
_lightRight_5 setLightFlareSize 0.38;
_lightRight_5 setLightFlareMaxDistance 150;
_lightRight_5 setLightUseFlare true;

_lightRight_6 setLightAttenuation [0.181, 0, 1000, 130];
_lightRight_6 setLightIntensity 10;
_lightRight_6 setLightFlareSize 0.38;
_lightRight_6 setLightFlareMaxDistance 150;
_lightRight_6 setLightUseFlare true;


_lightLeft setLightDayLight true;
_lightRight setLightDayLight true;

_lightLeft_1 setLightDayLight true;
_lightRight_1 setLightDayLight true;



_lightLeft_2 setLightDayLight true;
_lightLeft_3 setLightDayLight true;
_lightLeft_4 setLightDayLight true;
_lightLeft_5 setLightDayLight true;
_lightLeft_6 setLightDayLight true;


_lightRight_2 setLightDayLight true;
_lightRight_3 setLightDayLight true;
_lightRight_4 setLightDayLight true;
_lightRight_5 setLightDayLight true;
_lightRight_6 setLightDayLight true;



private _leftRed = true;
while {alive _vehicle} do {
    if !(_vehicle getVariable "lights") exitWith {};
    if (_leftRed) then {
		_lightRight setLightBrightness 0.0;
        _lightRight_1 setLightBrightness 0.0;
        _lightRight_2 setLightBrightness 6;
        _lightRight_3 setLightBrightness 6;
        _lightRight_4 setLightBrightness 0.0;
        _lightRight_5 setLightBrightness 0.0;
        _lightRight_6 setLightBrightness 0.0;
        sleep 0.05;
        _lightLeft setLightBrightness 6;
        _lightLeft_1 setLightBrightness 6;
        _lightLeft_2 setLightBrightness 6;
        _lightLeft_3 setLightBrightness 6;
        _lightLeft_4 setLightBrightness 2;
        _lightLeft_5 setLightBrightness 2;
        _lightLeft_6 setLightBrightness 2;
		sleep 0.01;
		_lightLeft setLightBrightness 6;
        _lightLeft_1 setLightBrightness 6;
        _lightLeft_2 setLightBrightness 0.0;
        _lightLeft_3 setLightBrightness 0.0;
        _lightLeft_4 setLightBrightness 2;
        _lightLeft_5 setLightBrightness 2;
        _lightLeft_6 setLightBrightness 2;
    } else {
        _lightLeft setLightBrightness 0.0;
        _lightLeft_1 setLightBrightness 0.0;
        _lightLeft_2 setLightBrightness 6;
        _lightLeft_3 setLightBrightness 6;
        _lightLeft_4 setLightBrightness 0.0;
        _lightLeft_5 setLightBrightness 0.0;
        _lightLeft_6 setLightBrightness 0.0;
        sleep 0.05;
        _lightRight setLightBrightness 6;
        _lightRight_1 setLightBrightness 6;
        _lightRight_2 setLightBrightness 6;
        _lightRight_3 setLightBrightness 6;
        _lightRight_4 setLightBrightness 2;
        _lightRight_5 setLightBrightness 2;
        _lightRight_6 setLightBrightness 2;
		sleep 0.01;
		_lightRight setLightBrightness 6;
        _lightRight_1 setLightBrightness 6;
        _lightRight_2 setLightBrightness 0.0;
        _lightRight_3 setLightBrightness 0.0;
        _lightRight_4 setLightBrightness 2;
        _lightRight_5 setLightBrightness 2;
        _lightRight_6 setLightBrightness 2;
    };
    _leftRed = !_leftRed;
    sleep _lightTime;
};




deleteVehicle _lightLeft;
deleteVehicle _lightLeft_1;
deleteVehicle _lightLeft_2;
deleteVehicle _lightLeft_3;
deleteVehicle _lightLeft_4;
deleteVehicle _lightLeft_5;
deleteVehicle _lightLeft_6;

deleteVehicle _lightRight;
deleteVehicle _lightRight_1;
deleteVehicle _lightRight_2;
deleteVehicle _lightRight_3;
deleteVehicle _lightRight_4;
deleteVehicle _lightRight_5;
deleteVehicle _lightRight_6;
