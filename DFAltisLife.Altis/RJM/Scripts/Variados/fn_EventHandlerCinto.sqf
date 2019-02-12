/*

    Adp: RJ

*/
if (hasInterface) then {
    player addEventHandler ["GetOutMan", {
        life_seatbelt = false;
    }];
    player addEventHandler ["GetInMan", {
        life_seatbelt = false;
    }];
};