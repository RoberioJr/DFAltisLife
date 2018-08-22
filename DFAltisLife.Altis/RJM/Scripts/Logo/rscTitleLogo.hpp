/*

    Author: RobérioJR
	
*/

class LogoDoServidor {
    duration = 99999;
    idd = 2792;
    onLoad = "uiNamespace setVariable ['RJ_Logo', _this select 0]";
    onUnload = "uiNamespace setVariable ['RJ_Logo', nil]";
    class controls {
        class imageHolder: RscPicture {
	        idc = 1200;
	        x = 0.8850 * safezoneW + safezoneX;
	        y = 0.8300 * safezoneH + safezoneY;
	        w = 0.1 * safezoneW;
	        h = 0.1 * safezoneH;
			/* Está No Canto Inferior Direito */
        };
    };
};
