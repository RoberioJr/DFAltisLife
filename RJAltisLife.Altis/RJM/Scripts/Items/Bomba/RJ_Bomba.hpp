/*

    Author: RobérioJR

*/
class RJ_Bomba {
	Name = "RJ_Bomba";
	idd = 4020;
	movingEnable = false;
	enableSimulation = false;
	
	class ControlsBackground
	{
		class Fundo
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.31835938;
			y = safeZoneY + safeZoneH * 0.39583334;
			w = safeZoneW * 0.36328125;
			h = safeZoneH * 0.23263889;
			style = 0;
			text = "";
			colorBackground[] = {0.102,0.102,0.102,0.75};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Titulo
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.31835938;
			y = safeZoneY + safeZoneH * 0.32291667;
			w = safeZoneW * 0.36328125;
			h = safeZoneH * 0.0625;
			style = 2;
			text = "Configurar Tempo De Explosão";
			colorBackground[] = {0.302,0.302,0.302,0.9};
			colorText[] = {0.902,0.902,0.902,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.4);
			
		};
		class Info
		{
			type = 0;
			idc = 4021;
			x = safeZoneX + safeZoneW * 0.359375;
			y = safeZoneY + safeZoneH * 0.41666667;
			w = safeZoneW * 0.28027344;
			h = safeZoneH * 0.06770834;
			style = 2;
			text = "10 Segundos";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.902,0.902,0.902,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2);
			
		};
		
	};
	class Controls
	{
		class Botao
		{
			type = 1;
			idc = 4022;
			x = safeZoneX + safeZoneW * 0.46484375;
			y = safeZoneY + safeZoneH * 0.56597223;
			w = safeZoneW * 0.0703125;
			h = safeZoneH * 0.03819445;
			style = 0+2;
			text = "Confirmar";
			borderSize = 0;
			colorBackground[] = {0.302,0.302,0.302,0.9};
			colorBackgroundActive[] = {0.502,0.502,0.502,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {0.902,0.902,0.902,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		class Slider
		{
			type = 43;
			idc = 4023;
			x = safeZoneX + safeZoneW * 0.33496094;
			y = safeZoneY + safeZoneH * 0.48958334;
			w = safeZoneW * 0.32910157;
			h = safeZoneH * 0.04513889;
			style = 1024;
			arrowEmpty = "\A3\ui_f\data\GUI\Cfg\Slider\arrowEmpty_ca.paa";
			arrowFull = "\A3\ui_f\data\GUI\Cfg\Slider\arrowFull_ca.paa";
			border = "\A3\ui_f\data\GUI\Cfg\Slider\border_ca.paa";
			color[] = {0.302,0.302,0.302,1};
			colorActive[] = {0.502,0.502,0.502,1};
			thumb = "\A3\ui_f\data\GUI\Cfg\Slider\thumb_ca.paa";
			onSliderPosChanged = "_this Call RJM_fnc_SliderBomba";
		};
		
	};
	
};
