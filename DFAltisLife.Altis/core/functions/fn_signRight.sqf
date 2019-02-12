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

if (isNil "_vehicle" || {isNull _vehicle || {!(_vehicle getVariable "lightsRight")}}) exitWith {};

private _lightOrange = [20,9,0];


_lightLeft = "#lightpoint" createVehicleLocal getPos _vehicle;
sleep 0.2;
_lightLeft setLightColor _lightOrange;
_lightLeft setLightBrightness 0.2;
_lightLeft setLightAmbient [0.1,0.1,1];

private _lightback = "#lightpoint" createVehicleLocal getPos _vehicle;
sleep 0.2;
_lightback setLightColor _lightOrange;
_lightback setLightBrightness 0.2;
_lightback setLightAmbient [0.1,0.1,1];

private _lightmid = "#lightpoint" createVehicleLocal getPos _vehicle;
sleep 0.2;
_lightmid setLightColor _lightOrange;
_lightmid setLightBrightness 0.2;
_lightmid setLightAmbient [0.1,0.1,1];

switch (typeOf _vehicle) do {
    case "B_Quadbike_01_F": //----------------------------------------------
    {
        _lightLeft lightAttachObject [_vehicle, [0.35,0.85,-0.623]];
        _lightback lightAttachObject [_vehicle, [0.45,-1.15,-0.523]];
        _lightmid lightAttachObject  [_vehicle, [0.35,0.85,-0.623]];
    };

	case "C_Hatchback_01_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [0.55,1.95,-0.523]];
			_lightback lightAttachObject [_vehicle, [0.65,-2.3,-0.273]];
			_lightmid lightAttachObject  [_vehicle, [0.75,0.8,-0.223]];
		};

	case "C_Hatchback_01_sport_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [0.55,1.95,-0.523]];
			_lightback lightAttachObject [_vehicle, [0.65,-2.3,-0.273]];
			_lightmid lightAttachObject  [_vehicle, [0.75,0.8,-0.223]];
		};

	case "C_Offroad_01_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [0.85,2.003,-0.323]];
			_lightback lightAttachObject [_vehicle, [0.8,-2.897,-0.173]];
			_lightmid lightAttachObject  [_vehicle, [0.85,2.003,-0.323]];
		};

	case "C_SUV_01_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [0.85,1.899,-0.473]];
			_lightback lightAttachObject [_vehicle, [0.85,-2.701,-0.123]];
			_lightmid lightAttachObject  [_vehicle, [1.05,0.399,-0.073]];
		};

	case "C_Van_01_transport_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [0.8,1.76,-0.223]];
			_lightback lightAttachObject [_vehicle, [0.8,-3.141,-0.823]];
			_lightmid lightAttachObject  [_vehicle, [1.15,0.96,-0.023]];
		};
	case "C_Offroad_02_unarmed_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [0.45,2.097,-0.573]];
			_lightback lightAttachObject [_vehicle, [0.65,-1.653,-0.373]];
			_lightmid lightAttachObject  [_vehicle, [1,0.597,-0.023]];
		};

	case "C_Van_01_box_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [0.801,1.608,-0.273]];
			_lightback lightAttachObject [_vehicle, [0.801,-3.292,-0.823]];
			_lightmid lightAttachObject  [_vehicle, [1.15,0.808,-0.023]];
		};

	case "C_Truck_02_transport_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [0.85,3.857,-1.223]];
			_lightback lightAttachObject [_vehicle, [0.8,-3.544,-1.223]];
			_lightmid lightAttachObject  [_vehicle, [1.1,-1.494,-1.173]];
		};
	case "C_Truck_02_covered_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [0.85,3.857,-1.223]];
			_lightback lightAttachObject [_vehicle, [0.8,-3.544,-1.223]];
			_lightmid lightAttachObject  [_vehicle, [1.1,-1.494,-1.173]];
		};

	case "B_Truck_01_transport_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [0.8,5.003,-0.473]];
			_lightback lightAttachObject [_vehicle, [1.15,-5.048,-0.673]];
			_lightmid lightAttachObject  [_vehicle, [1.25,0.703,-0.623]];
		};

	case "O_Truck_03_transport_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [0.85,3.303,-1.073]];
			_lightback lightAttachObject [_vehicle, [1.15,-4.647,-1.223]];
			_lightmid lightAttachObject  [_vehicle, [1.3,-1.547,-1.073]];
		};
	case "O_Truck_03_covered_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [0.85,3.303,-1.073]];
			_lightback lightAttachObject [_vehicle, [1.15,-4.647,-1.223]];
			_lightmid lightAttachObject  [_vehicle, [1.3,-1.547,-1.073]];
		};

	case "B_Truck_01_box_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [0.801,5.152,-0.573]];
			_lightback lightAttachObject [_vehicle, [1.15,-5.648,-0.473]];
			_lightmid lightAttachObject  [_vehicle, [1.25,-1.248,-0.773]];
		};

	case "O_Truck_03_device_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [0.8,3.001,-0.773]];
			_lightback lightAttachObject [_vehicle, [1.1,-4.949,-0.923]];
			_lightmid lightAttachObject  [_vehicle, [1.3,-1.849,-0.823]];
		};

	case "C_Van_01_fuel_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [0.801,1.601,-0.273]];
			_lightback lightAttachObject [_vehicle, [0.801,-3.292,-0.823]];
			_lightmid lightAttachObject  [_vehicle, [1.15,0.808,-0.023]];
		};
	case "C_Truck_02_fuel_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [0.85,3.857,-1.223]];
			_lightback lightAttachObject [_vehicle, [0.8,-3.544,-1.223]];
			_lightmid lightAttachObject  [_vehicle, [1.1,-1.494,-1.173]];
		};

	case "B_Truck_01_covered_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [0.8,5.003,-0.473]];
			_lightback lightAttachObject [_vehicle, [1.15,-5.048,-0.673]];
			_lightmid lightAttachObject  [_vehicle, [1.25,0.703,-0.623]];
		};
	case "B_G_Offroad_01_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [0.85,2.003,-0.323]];
			_lightback lightAttachObject [_vehicle, [0.8,-2.897,-0.173]];
			_lightmid lightAttachObject  [_vehicle, [0.85,2.003,-0.323]];
		};

	case "I_G_Van_02_vehicle_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [0.95,3.756,-0.423]];
			_lightback lightAttachObject [_vehicle, [1,-3.194,-0.473]];
			_lightmid lightAttachObject  [_vehicle, [1.2,2.756,-0.073]];
		};
	case "B_G_Offroad_01_armed_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [0.8,2.154,-0.923]];
			_lightback lightAttachObject [_vehicle, [0.8,-2.746,-0.773]];
			_lightmid lightAttachObject  [_vehicle, [0.8,2.154,-0.923]];
		};

	case "O_LSV_02_unarmed_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [0.649,2.049,-0.373]];
			_lightback lightAttachObject [_vehicle, [0.75,-2.401,-0.473]];
			_lightmid lightAttachObject  [_vehicle, [0.649,2.049,-0.373]];
		};
	case "B_LSV_01_unarmed_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [0.75,2.053,-0.973]];
			_lightback lightAttachObject [_vehicle, [0.8,-2.047,-0.773]];
			_lightmid lightAttachObject  [_vehicle, [0.75,2.053,-0.973]];
		};

	case "B_MRAP_01_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [1.1,1.45,-0.623]];
			_lightback lightAttachObject [_vehicle, [1.15,-4.25,-0.723]];
			_lightmid lightAttachObject  [_vehicle, [1.1,1.45,-0.623]];
		};

	case "O_MRAP_02_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [0.8,1.5,-1.073]];
			_lightback lightAttachObject [_vehicle, [0.65,-4.5,-1.273]];
			_lightmid lightAttachObject  [_vehicle, [1.15,-0.35,-0.873]];
		};

	case "I_MRAP_03_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [0.95,2.148,-0.823]];
			_lightback lightAttachObject [_vehicle, [1.05,-3.152,0.027]];
			_lightmid lightAttachObject  [_vehicle, [1.35,-1.802,-0.123]];
		};

	case "C_Van_02_medevac_F": //----------------------------------------------
		{
			_lightLeft lightAttachObject [_vehicle, [0.95,3.756,-0.423]];
			_lightback lightAttachObject [_vehicle, [1,-3.194,-0.473]];
			_lightmid lightAttachObject  [_vehicle, [1.2,2.756,-0.073]];
		};

};

_lightLeft setLightAttenuation [0.181, 0, 1000, 130];
_lightLeft setLightIntensity 10;
_lightLeft setLightFlareSize 0.38;
_lightLeft setLightFlareMaxDistance 150;
_lightLeft setLightUseFlare true;

_lightback setLightAttenuation [0.181, 0, 1000, 130];
_lightback setLightIntensity 10;
_lightback setLightFlareSize 0.38;
_lightback setLightFlareMaxDistance 150;
_lightback setLightUseFlare true;

_lightmid setLightAttenuation [0.181, 0, 1000, 130];
_lightmid setLightIntensity 10;
_lightmid setLightFlareSize 0.38;
_lightmid setLightFlareMaxDistance 150;
_lightmid setLightUseFlare true;

_lightLeft setLightDayLight true;
_lightback setLightDayLight true;
_lightmid setLightDayLight true;

//private _Dia = [5,6,7,8,9,10,11,12,13,14,15,16];
private _leftLigado = true;
while {alive _vehicle} do {
    _bright = (0.1 + sunOrMoon) * 3;
    if !(_vehicle getVariable "lightsLeft") exitWith {};
    if (_leftLigado) then {
		_lightLeft setLightBrightness _bright;
		_lightback setLightBrightness _bright;
		_lightmid setLightBrightness _bright;
	    /*
		if (round(DayTime) in _Dia) Then {
			_lightLeft setLightBrightness 50;
			_lightback setLightBrightness 50;
			_lightmid setLightBrightness 50;
		} Else {
			_lightLeft setLightBrightness 3;
			_lightback setLightBrightness 3;
			_lightmid setLightBrightness 3;
		};
		sleep 0.4;
		*/
    } else {
        _lightLeft setLightBrightness 0;
        _lightback setLightBrightness 0;
		_lightmid setLightBrightness 0;
		sleep 0.4;
    };
    _leftLigado = !_leftLigado;
};
deleteVehicle _lightLeft;
deleteVehicle _lightback;
deleteVehicle _lightmid;