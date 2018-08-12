class Assalto {
	idd = 9000;
    name= "Assalto";
    movingEnable = 0;
    enableSimulation = 1;
	
	class ControlsBackground
	{
		class NomeServ
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.34277344;
			y = safeZoneY + safeZoneH * 0.6875;
			w = safeZoneW * 0.31445313;
			h = safeZoneH * 0.0625;
			style = 0+2;
			text = "Distrito Federal AltisLife";
			colorBackground[] = {0.102,0.102,0.102,0.873};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 2.25);
			
		};
		class Texto
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.41601563;
			y = safeZoneY + safeZoneH * 0.34722223;
			w = safeZoneW * 0.16796875;
			h = safeZoneH * 0.03819445;
			style = 0+2;
			text = "Escolha Um Tipo De Abordagem:";
			colorBackground[] = {0.302,0.302,0.302,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2);
			
		};
		class Frame
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.41601563;
			y = safeZoneY + safeZoneH * 0.34722223;
			w = safeZoneW * 0.16796875;
			h = safeZoneH * 0.03819445;
			style = 0+64;
			text = "";
			colorBackground[] = {0.302,0.302,0.302,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Frame2
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.34277344;
			y = safeZoneY + safeZoneH * 0.29861112;
			w = safeZoneW * 0.31835938;
			h = safeZoneH * 0.37326389;
			style = 0+64;
			text = "";
			colorBackground[] = {0.302,0.302,0.302,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class RscText_1001 : Life_RscText 
		{
			idc = 1001;
			x = safeZoneX + safeZoneW * 0.33886719;
			y = safeZoneY + safeZoneH * 0.28993056;
			w = safeZoneW * 0.32519532;
			h = safeZoneH * 0.38888889;
			colorBackground[] = {0,0,0,0.5};
			
		};
		
	};
	class Controls
	{
		class Botao2
		{
			type = 1;
			idc = 2402;
			x = safeZoneX + safeZoneW * 0.41601563;
			y = safeZoneY + safeZoneH * 0.51736112;
			w = safeZoneW * 0.16796875;
			h = safeZoneH * 0.03819445;
			style = 0+2;
			text = "BOTAO2";
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0.8196,0.6667,0.0902,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		class Botao3
		{
			type = 1;
			idc = 2403;
			x = safeZoneX + safeZoneW * 0.41601563;
			y = safeZoneY + safeZoneH * 0.56597223;
			w = safeZoneW * 0.16796875;
			h = safeZoneH * 0.03819445;
			style = 0+2;
			text = "BOTAO3";
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0.8196,0.6667,0.0902,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		class Botao1
		{
			type = 1;
			idc = 2401;
			x = safeZoneX + safeZoneW * 0.41601563;
			y = safeZoneY + safeZoneH * 0.46875;
			w = safeZoneW * 0.16796875;
			h = safeZoneH * 0.03819445;
			style = 0+2;
			text = "BOTAO1";
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0.8196,0.6667,0.0902,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		
	};
	
};
