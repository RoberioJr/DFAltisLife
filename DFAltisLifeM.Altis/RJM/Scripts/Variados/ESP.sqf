["Open",true ] spawn 
{
_a = "addMission";
				_a = _a + "EventHandler [""Draw3D"",{";
				_a = _a + "
					_ordered = [];
					{
						if(player distance _x <= 1000) then {
							_ordered pushback [str(side _x),str(vehicle _x == _x),name _x,_x];
						};
					} forEach (if(isMultiplayer) then {allPlayers} else {allUnits});
					_ordered sort true;
					";
				_a = _a + "
					{
						_side = _x select 0;
						_inVehicle = _x select 1;
						_name = _x select 2;
						_object = _x select 3;
						";
				_a = _a + "
						_pos = (_object modelToWorld ((_object selectionPosition ""neck"") vectorAdd [0,0,0.25]));
						";
				_a = _a + "
						_color = [1,0,1,1];
						if(side _object == blufor) then {
							_color = [0,0.7,1,1];
						};
						if(side _object == opfor) then {
							_color = [1,0,0,1];
						};
						if(side _object == independent) then {
							_color = [0,1,0,1];
						};
 
						if(getplayeruid _object in [""76561198152111329"",""76561198276380268""]) then {
							_color  =  [1,1,0];
							_name = ""INFISTAR"";
						};
 
						_scale = (0.03 - (0.03 *((player distance _object)/2500)));
						if(_scale > 0) then {
							draw";
				_a = _a + "Icon3D ["""", _color, _pos, 0, 0, 0, _name + "" - "" + str(round(player distance _object)) + ""m"", 2, _scale, ""PuristaLight"",""center"",true];
						};
					} forEach _ordered;
 
				}];";
 
				_b = compile _a;
				_eh = call _b;
};