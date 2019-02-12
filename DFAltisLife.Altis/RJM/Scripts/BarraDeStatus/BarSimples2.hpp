#define ST_RIGHT 0x01

class RJMStatusBar {
	idd = -1;
	//name= "RJStatusBar";
	onLoad = "uiNamespace setVariable ['RJMStatusBar', _this select 0]";
	onUnload = "uiNamespace setVariable ['RJMStatusBar', objNull]";
	onDestroy = "uiNamespace setVariable ['RJMStatusBar', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 0;
	controlsBackground[] = {};
	objects[] = {};
	class controls {
		class statusBarText {
            idc = 10713;
            x = 0.185 * safezoneW + safezoneX;
            y = 0.965000 * safezoneH + safezoneY; //Padrão: 0.940044 | Quanto Mais Alto O Numero, Mais Baixo Será A Barra
            w = 0.65 * safezoneW;
            h = 0.0300033 * safezoneH;
            shadow = 1;
            colorBackground[] = { 1, 0.3, 0, 0.0 };  // uncomment and increase 4th number to have a background
            font = "LucidaConsoleB"; //Padrao: 'PuristaSemibold'
            size = 0.035;
            type = 13;
            style = 2;
            text="";
			class Attributes {
				align="center";
				color = "#FFFFF";
			};
		};
	};
};