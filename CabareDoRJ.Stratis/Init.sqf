/*

    Author: RobérioJR
	|07/08/18|

*/

    /* Mission Inicialization */
	[] execVM "RJ\InitRJ.sqf";
	
	MISSION_ROOT = call {
        private "_arr";
        _arr = toArray __FILE__;
        _arr resize (count _arr - 8);
        toString _arr
    };
