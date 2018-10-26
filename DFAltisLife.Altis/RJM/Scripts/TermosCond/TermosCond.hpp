/*

   Author: Casperento
   Edit: RobérioJR
   
*/
class RJ_TermosCond {
	idd = 66669;
	name = "RJ_TermosCond";
    movingEnable = 0;
    enableSimulation = 1;
	
	class controls {
		class CXP_MENTERMS_RscText_1000: life_RscText
		{
			idc = -1;
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.159 * safezoneH + safezoneY;
			w = 0.4125 * safezoneW;
			h = 0.704 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.5};
		};
		class CXP_MENTERMS_RscButtonMenu_2400: life_RscButtonMenu
		{
			idc = 4691;
			text = "Aceitar"; //--- ToDo: Localize;
			onButtonClick = "closeDialog 0;[] call RJM_fnc_AceitarTermos;";
			x = 0.402031 * safezoneW + safezoneX;
			y = 0.786 * safezoneH + safezoneY;
			w = 0.0670312 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class CXP_MENTERMS_RscButtonMenu_2401: life_RscButtonMenu
		{
			idc = 4692;
			text = "Discordar"; //--- ToDo: Localize;
			onButtonClick = "[] spawn RJM_fnc_DiscordarTermos;";
			x = 0.54125 * safezoneW + safezoneX;
			y = 0.786 * safezoneH + safezoneY;
			w = 0.0670312 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class CXP_MENTERMS_RscFrame_1800: life_RscFrame
		{
			idc = -1;
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.159 * safezoneH + safezoneY;
			w = 0.4125 * safezoneW;
			h = 0.704 * safezoneH;
			colorText[] = {1,-1,-1,1};
		};
		class CXP_MENTERMS_RscText_1001: life_RscText
		{
			idc = -1;
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.159 * safezoneH + safezoneY;
			w = 0.4125 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {1,-1,-1,1};
		};
		class CXP_MENTERMS_RscText_1002: life_RscText
		{
			idc = -1;
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.841 * safezoneH + safezoneY;
			w = 0.4125 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {1,-1,-1,1};
		};
		class CXP_MENTERMS_RscText_1003: life_RscText
		{
			idc = -1;
			text = "Leia Os Termos e Condições:"; //--- ToDo: Localize;
			x = 0.329844 * safezoneW + safezoneX;
			y = 0.181 * safezoneH + safezoneY;
			w = 0.345469 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class CXP_MENTERMS_RscStructuredText_1100: life_RscStructuredText
		{
			idc = 4693;
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.236 * safezoneH + safezoneY;
			w = 0.391875 * safezoneW;
			h = 0.528 * safezoneH;
		};
		class CXP_MENTERMS_RscButton_1600: life_RscButtonMenu
		{
			idc = -1;
			text = "X"; //--- ToDo: Localize;
			onButtonClick = "[] call RJM_fnc_DiscordarTermos;";
			x = 0.690781 * safezoneW + safezoneX;
			y = 0.159 * safezoneH + safezoneY;
			w = 0.0154688 * safezoneW;
			h = 0.022 * safezoneH;
			tooltip = "Fechar..."; //--- ToDo: Localize;
		};
		class CXP_MENTERMS_RscText_1004: life_RscText
		{
			idc = -1;
			text = "Distrito Federal"; //--- ToDo: Localize;
			x = 0.453594 * safezoneW + safezoneX;
			y = 0.159 * safezoneH + safezoneY;
			w = 0.0979687 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class CXP_MENTERMS_RscText_1005: life_RscText
		{
			idc = -1;
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.8498 * safezoneH + safezoneY;
			w = 0.4125 * safezoneW;
			h = 0.0055 * safezoneH;
			colorBackground[] = {-1,-1,-1,1};
		};
		class CXP_MENTERMS_RscText_1006: life_RscText
		{
			idc = -1;
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.17 * safezoneH + safezoneY;
			w = 0.159844 * safezoneW;
			h = 0.0055 * safezoneH;
			colorBackground[] = {-1,-1,-1,1};
		};
		class CXP_MENTERMS_RscText_1007: life_RscText
		{
			idc = -1;
			x = 0.546406 * safezoneW + safezoneX;
			y = 0.17 * safezoneH + safezoneY;
			w = 0.144375 * safezoneW;
			h = 0.0055 * safezoneH;
			colorBackground[] = {-1,-1,-1,1};
		};
	};
};
