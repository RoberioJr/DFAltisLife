/*
    File: fn_copLights.sqf
    Author: mindstorm, modified by Adanteh
    Link: http://forums.bistudio.com/showthread.php?157474-Offroad-Police-sirens-lights-and-underglow

    Description:
    Adds the light effect to cop vehicles, specifically the offroad.
*/
Private ["_vehicle","_lightRed","_lightBlue","_lightleft","_lightright","_lightleft1","_lightright1","_lightleft2","_lightright2","_leftRed"];
_vehicle = _this select 0;

if (isNil "_vehicle" || isNull _vehicle || !(_vehicle getVariable "lights")) exitWith {};
_lightRed = [20, 0.1, 0.1];
_lightBlue = [0.1, 0.1, 20];

_lightleft = "#lightpoint" createVehicle getPos _vehicle;
sleep 0.2;
_lightleft setLightColor _lightRed;
_lightleft setLightBrightness 0.2;
_lightleft setLightAmbient [0.1,0.1,1];

_lightleft1 = "#lightpoint" createVehicle getPos _vehicle;
sleep 0.2;
_lightleft1 setLightColor _lightRed;
_lightleft1 setLightBrightness 0.2;
_lightleft1 setLightAmbient [0.1,0.1,1];

_lightleft2 = "#lightpoint" createVehicle getPos _vehicle;
sleep 0.2;
_lightleft2 setLightColor _lightRed;
_lightleft2 setLightBrightness 0.2;
_lightleft2 setLightAmbient [0.1,0.1,1];

switch (typeOf _vehicle) do
{
    case "C_Offroad_01_F":
    {
        _lightleft lightAttachObject [_vehicle, [-0.37, 0.0, 0.56]];
		_lightleft1 lightAttachObject [_vehicle, [-0.85,2.003,-0.323]];
		_lightleft2 lightAttachObject [_vehicle, [-0.8,-2.897,-0.173]];
    };

    case "B_MRAP_01_F":
    {
        _lightleft lightAttachObject [_vehicle, [-0.37, -1.9, 0.7]];
		_lightleft1 lightAttachObject [_vehicle, [-1.1,1.45,-0.623]];
		_lightleft2 lightAttachObject [_vehicle, [-1.15,-4.25,-0.723]];
    };

    case "C_SUV_01_F":
    {
        _lightleft lightAttachObject [_vehicle, [-0.37,-1.2,0.42]];
		_lightleft1 lightAttachObject [_vehicle, [-0.85,1.899,-0.473]];
		_lightleft2 lightAttachObject [_vehicle, [-0.85,-2.701,-0.123]];
    };
	
	case "O_LSV_02_unarmed_F":
    {
        _lightleft lightAttachObject [_vehicle, [-0.649,2.049,-0.373]];
		_lightleft1 lightAttachObject [_vehicle, [-0.75,-2.401,-0.473]];
		_lightleft2 lightAttachObject [_vehicle, [-0.649,2.049,-0.373]];
    };
	
    case "C_Hatchback_01_sport_F":
    {
        _lightleft lightAttachObject [_vehicle, [-0.35,-0.2,0.25]];
		_lightleft1 lightAttachObject [_vehicle, [-0.55,1.95,-0.523]];
		_lightleft2 lightAttachObject [_vehicle, [-0.65,-2.3,-0.273]];
    };

    case "B_Heli_Light_01_F":
    {
        _lightleft lightAttachObject [_vehicle,[-0.37, 0.0, -0.80]];
		_lightleft1 lightAttachObject [_vehicle,[-0.37, 0.0, -0.80]];
		_lightleft2 lightAttachObject [_vehicle,[-0.37, 0.0, -0.80]];
    };

    case "B_Heli_Transport_01_F":
    {
        _lightleft lightAttachObject [_vehicle, [-0.5, 0.0, 0.81]];
		_lightleft1 lightAttachObject [_vehicle, [-0.5, 0.0, 0.81]];
		_lightleft2 lightAttachObject [_vehicle, [-0.5, 0.0, 0.81]];
     };
};

_lightleft setLightAttenuation [0.181, 0, 1000, 130];
_lightleft setLightIntensity 10;
_lightleft setLightFlareSize 0.38;
_lightleft setLightFlareMaxDistance 150;
_lightleft setLightUseFlare true;

_lightleft1 setLightAttenuation [0.181, 0, 1000, 130];
_lightleft1 setLightIntensity 10;
_lightleft1 setLightFlareSize 0.38;
_lightleft1 setLightFlareMaxDistance 150;
_lightleft1 setLightUseFlare true;

_lightleft2 setLightAttenuation [0.181, 0, 1000, 130];
_lightleft2 setLightIntensity 10;
_lightleft2 setLightFlareSize 0.38;
_lightleft2 setLightFlareMaxDistance 150;
_lightleft2 setLightUseFlare true;

_lightright = "#lightpoint" createVehicle getPos _vehicle;
sleep 0.2;
_lightright setLightColor _lightBlue;
_lightright setLightBrightness 0.2;
_lightright setLightAmbient [0.1,0.1,1];

_lightright1 = "#lightpoint" createVehicle getPos _vehicle;
sleep 0.2;
_lightright1 setLightColor _lightBlue;
_lightright1 setLightBrightness 0.2;
_lightright1 setLightAmbient [0.1,0.1,1];

_lightright2 = "#lightpoint" createVehicle getPos _vehicle;
sleep 0.2;
_lightright2 setLightColor _lightBlue;
_lightright2 setLightBrightness 0.2;
_lightright2 setLightAmbient [0.1,0.1,1];

switch (typeOf _vehicle) do
{
    case "C_Offroad_01_F":
    {
        _lightright lightAttachObject [_vehicle, [0.37, 0.0, 0.56]];
		_lightright1 lightAttachObject [_vehicle, [0.85,2.003,-0.323]];
		_lightright2 lightAttachObject [_vehicle, [0.8,-2.897,-0.173]];
    };

    case "B_MRAP_01_F":
    {
        _lightright lightAttachObject [_vehicle, [0.37, -1.9, 0.7]];
		_lightright1 lightAttachObject [_vehicle, [1.1,1.45,-0.623]];
		_lightright2 lightAttachObject [_vehicle, [1.15,-4.25,-0.723]];
    };

    case "C_SUV_01_F":
    {
        _lightright lightAttachObject [_vehicle, [0.37,-1.2,0.42]];
		_lightright1 lightAttachObject [_vehicle, [0.85,1.899,-0.473]];
		_lightright2 lightAttachObject [_vehicle, [0.85,-2.701,-0.123]];
    };
	
	case "O_LSV_02_unarmed_F":
    {
        _lightright lightAttachObject [_vehicle, [0.649,2.049,-0.373]];
		_lightright1 lightAttachObject [_vehicle, [0.75,-2.401,-0.473]];
		_lightright2 lightAttachObject [_vehicle, [0.649,2.049,-0.373]];
    };
	
    case "C_Hatchback_01_sport_F":
    {
        _lightright lightAttachObject [_vehicle, [0.35,-0.2,0.25]];
		_lightright1 lightAttachObject [_vehicle, [0.55,1.95,-0.523]];
		_lightright2 lightAttachObject [_vehicle, [0.65,-2.3,-0.273]];
    };

    case "B_Heli_Light_01_F":
    {
        _lightright lightAttachObject [_vehicle,[0.37, 0.0, -0.80]];
		_lightright1 lightAttachObject [_vehicle,[0.37, 0.0, -0.80]];
		_lightright2 lightAttachObject [_vehicle,[0.37, 0.0, -0.80]];
    };

    case "B_Heli_Transport_01_F":
    {
        _lightright lightAttachObject [_vehicle, [0.5, 0.0, 0.81]];
		_lightright1 lightAttachObject [_vehicle, [0.5, 0.0, 0.81]];
		_lightright2 lightAttachObject [_vehicle, [0.5, 0.0, 0.81]];
     };
};

_lightright setLightAttenuation [0.181, 0, 1000, 130];
_lightright setLightIntensity 10;
_lightright setLightFlareSize 0.38;
_lightright setLightFlareMaxDistance 150;
_lightright setLightUseFlare true;

_lightright1 setLightAttenuation [0.181, 0, 1000, 130];
_lightright1 setLightIntensity 10;
_lightright1 setLightFlareSize 0.38;
_lightright1 setLightFlareMaxDistance 150;
_lightright1 setLightUseFlare true;

_lightright2 setLightAttenuation [0.181, 0, 1000, 130];
_lightright2 setLightIntensity 10;
_lightright2 setLightFlareSize 0.38;
_lightright2 setLightFlareMaxDistance 150;
_lightright2 setLightUseFlare true;

//ARE YOU ALL HAPPY?!?!?!?!?!?!?!?!?%#?@WGD?TGD?BN?ZDHBFD?GA
_lightleft setLightDayLight true;
_lightleft1 setLightDayLight true;
_lightleft2 setLightDayLight true;
_lightright setLightDayLight true;
_lightright1 setLightDayLight true;
_lightright2 setLightDayLight true;

_leftRed = true;
while{ (alive _vehicle)} do
{
    if (!(_vehicle getVariable "lights")) exitWith {};
    if (_leftRed) then
    {
        _leftRed = false;
        _lightright setLightBrightness 0.0;
		_lightright1 setLightBrightness 0.0;
		_lightright2 setLightBrightness 0.0;
        sleep 0.05;
        _lightleft setLightBrightness 6;
		_lightleft1 setLightBrightness 6;
		_lightleft2 setLightBrightness 6;
    }
        else
    {
        _leftRed = true;
        _lightleft setLightBrightness 0.0;
		_lightleft1 setLightBrightness 0.0;
		_lightleft2 setLightBrightness 0.0;
        sleep 0.05;
        _lightright setLightBrightness 6;
		_lightright1 setLightBrightness 6;
		_lightright2 setLightBrightness 6;
    };
    sleep (_this select 1);
};
deleteVehicle _lightleft;
deleteVehicle _lightleft1;
deleteVehicle _lightleft2;
deleteVehicle _lightright;
deleteVehicle _lightright1;
deleteVehicle _lightright2;