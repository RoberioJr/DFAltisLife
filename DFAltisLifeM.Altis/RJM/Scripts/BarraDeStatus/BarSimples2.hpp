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
			x = safezoneX + safezoneW - 1.36; //Padrão: 1 | Central: 1.36
			y = safezoneY + safezoneH - 0.052; //Padrão: 0.08 | Mais Baixo: 0.052
			w = 1;
			h = 0.08;     //Padrão 0.03
			shadow = 1;
			colorBackground[] = { 1, 0.3, 0, 0.0 };  // uncomment and increase 4th number to have a background
			font = "LucidaConsoleB"; //Padrao: 'PuristaSemibold'
			size = 0.035;
			type = 13;
			style = 1;
			text="";
			class Attributes {
				align="center";
				color = "#FFFFF";
			};
		};
	};
};