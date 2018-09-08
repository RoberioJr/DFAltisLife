/*

    Author: RobérioJR

*/

/*
[] Spawn {
    While {True} Do {
	    WaitUntil {Alive Player};
		[3] Call RJ_fnc_SalvarProfile;
	};
};*/
[] Spawn { //Save De Dinheiro
    While {True} Do {
	    Sleep 200;
        [3] Call RJ_fnc_SalvarProfile;
    };
};