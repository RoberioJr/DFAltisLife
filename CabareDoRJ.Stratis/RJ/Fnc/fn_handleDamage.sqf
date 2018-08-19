
/*
*/
params [
    ["_unit",objNull,[objNull]],
    ["_part","",[""]],
    ["_damage",0,[0]],
    ["_source",objNull,[objNull]],
    ["_projectile","",[""]],
    ["_index",0,[0]]
];

//Handle the tazer first (Top-Priority).
if (_source IsEqualTo dog) then {
if (!isNull _source) then {
    if (_source != _unit) then {
        if (_unit distance _source < 2) then {
            if (playerSide isEqualTo civilian) then {
                _damage = 0;
                if (alive player && !life_istazed) then {
                    if !(isNull objectParent player) then {
                        if (typeOf (vehicle player) == "B_Quadbike_01_F") then {
                            player action ["Eject",vehicle player];
                            [_unit,_source] spawn RJ_fnc_DogImob;
                        };
                    } else {
                        [_unit,_source] spawn RJ_fnc_DogImob;
                    };
                };
            };

            //Temp fix for super tasers on cops.
            if ((playerSide isEqualTo west || playerSide isEqualTo independent)) then {
                _damage = 0;
            };
        };
    };
};
};

_damage;