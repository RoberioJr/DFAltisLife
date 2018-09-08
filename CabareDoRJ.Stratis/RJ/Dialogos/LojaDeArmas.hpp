/*

    Author: RobérioJR

*/

class RJ_LojaDeArmas
{
	idd = 5000;
	movingEnable = false;
	
	class ControlsBackground
	{
		class Frame1
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.29394532;
			y = safeZoneY + safeZoneH * 0.15277778;
			w = safeZoneW * 0.41210938;
			h = safeZoneH * 0.0625;
			style = 0+64;
			text = "";
			colorBackground[] = {0.2,0.2,0.2,1};
			colorText[] = {0.2,0.2,0.2,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Fundo
		{
			type = 0;
			idc = -1;
			x = 0;
			y = 0;
			w = 1;
			h = 1;
			style = 0;
			text = "";
			colorBackground[] = {0.302,0.302,0.302,0.5};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Titulo
		{
			type = 2;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.29394532;
			y = safeZoneY + safeZoneH * 0.15277778;
			w = safeZoneW * 0.41210938;
			h = safeZoneH * 0.0625;
			style = 2;
			text = "Loja De Armas";
			autocomplete = "";
			colorBackground[] = {0.302,0.302,0.302,0.5};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelection[] = {0.4,0.4,0.4,1};
			colorText[] = {0.902,0.902,0.902,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 2);
			
		};
		class Frame2
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.29394532;
			y = safeZoneY + safeZoneH * 0.22569445;
			w = safeZoneW * 0.41210938;
			h = safeZoneH * 0.54861112;
			style = 0+64;
			text = "";
			colorBackground[] = {0.2,0.2,0.2,1};
			colorText[] = {0.2,0.2,0.2,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class FundoInfo
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.31835938;
			y = safeZoneY + safeZoneH * 0.34722223;
			w = safeZoneW * 0.09472657;
			h = safeZoneH * 0.28125;
			style = 0;
			text = "";
			colorBackground[] = {0.502,0.502,0.502,0.8};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		
	};
	class Controls
	{
		class ListBoxRJ
		{
			type = 5;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.41601563;
			y = safeZoneY + safeZoneH * 0.27430556;
			w = safeZoneW * 0.265625;
			h = safeZoneH * 0.42013889;
			style = 16;
			colorBackground[] = {0.502,0.502,0.502,0.8};
			colorDisabled[] = {0.302,0.302,0.302,1};
			colorSelect[] = {0.702,0.702,0.702,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0.04;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.3);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class ComprarRJ
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.42578125;
			y = safeZoneY + safeZoneH * 0.71180556;
			w = safeZoneW * 0.0703125;
			h = safeZoneH * 0.03819445;
			style = 2;
			text = "Comprar";
			borderSize = 0;
			colorBackground[] = {0.4,0.4,0.4,1};
			colorBackgroundActive[] = {0.6,0.6,0.6,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0.949,0.949,0.949,1};
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
		class VenderRJ
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.61132813;
			y = safeZoneY + safeZoneH * 0.71180556;
			w = safeZoneW * 0.0703125;
			h = safeZoneH * 0.03819445;
			style = 2;
			text = "Vender";
			borderSize = 0;
			colorBackground[] = {0.4,0.4,0.4,1};
			colorBackgroundActive[] = {0.6,0.6,0.6,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0.949,0.949,0.949,1};
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
		class AcessoriosRJ
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.51668888;
			y = safeZoneY + safeZoneH * 0.71180556;
			w = safeZoneW * 0.0703125;
			h = safeZoneH * 0.03819445;
			style = 2;
			text = "Acessórios";
			borderSize = 0;
			colorBackground[] = {0.4,0.4,0.4,1};
			colorBackgroundActive[] = {0.6,0.6,0.6,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0.949,0.949,0.949,1};
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
		class Grana
		{
			type = 2;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.31835938;
			y = safeZoneY + safeZoneH * 0.6875;
			w = safeZoneW * 0.0703125;
			h = safeZoneH * 0.03819445;
			style = 0;
			text = " R$ 9999999";
			autocomplete = "";
			colorBackground[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorSelection[] = {0,0,0,0};
			colorText[] = {0.949,0.949,0.949,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.3);
			
		};
		class Info1
		{
			type = 2;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.31835938;
			y = safeZoneY + safeZoneH * 0.34722223;
			w = safeZoneW * 0.09472657;
			h = safeZoneH * 0.03819445;
			style = 0;
			text = " Preço : %1";
			autocomplete = "";
			colorBackground[] = {0,0,0,0};
			colorDisabled[] = {0.949,0.949,0.949,1};
			colorSelection[] = {0,0,0,0};
			colorText[] = {0.949,0.949,0.949,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.18);
			
		};
		class Info2
		{
			type = 2;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.31835938;
			y = safeZoneY + safeZoneH * 0.39583334;
			w = safeZoneW * 0.09472657;
			h = safeZoneH * 0.03819445;
			style = 0;
			text = " Info2 : %1";
			autocomplete = "";
			colorBackground[] = {0,0,0,0};
			colorDisabled[] = {0.949,0.949,0.949,1};
			colorSelection[] = {0,0,0,0};
			colorText[] = {0.949,0.949,0.949,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.18);
			
		};
		class Info3
		{
			type = 2;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.31835938;
			y = safeZoneY + safeZoneH * 0.44444445;
			w = safeZoneW * 0.09472657;
			h = safeZoneH * 0.03819445;
			style = 0;
			text = " Info2 : %1";
			autocomplete = "";
			colorBackground[] = {0,0,0,0};
			colorDisabled[] = {0.949,0.949,0.949,1};
			colorSelection[] = {0,0,0,0};
			colorText[] = {0.949,0.949,0.949,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.18);
			
		};
		class Info4
		{
			type = 2;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.31835938;
			y = safeZoneY + safeZoneH * 0.49305556;
			w = safeZoneW * 0.09472657;
			h = safeZoneH * 0.03819445;
			style = 0;
			text = " Info2 : %1";
			autocomplete = "";
			colorBackground[] = {0,0,0,0};
			colorDisabled[] = {0.949,0.949,0.949,1};
			colorSelection[] = {0,0,0,0};
			colorText[] = {0.949,0.949,0.949,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.18);
			
		};
		class Info5
		{
			type = 2;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.31835938;
			y = safeZoneY + safeZoneH * 0.54166667;
			w = safeZoneW * 0.09472657;
			h = safeZoneH * 0.03819445;
			style = 0;
			text = " Info2 : %1";
			autocomplete = "";
			colorBackground[] = {0,0,0,0};
			colorDisabled[] = {0.949,0.949,0.949,1};
			colorSelection[] = {0,0,0,0};
			colorText[] = {0.949,0.949,0.949,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.18);
			
		};
		class Info6
		{
			type = 2;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.31835938;
			y = safeZoneY + safeZoneH * 0.59027778;
			w = safeZoneW * 0.09472657;
			h = safeZoneH * 0.03819445;
			style = 0;
			text = " Info2 : %1";
			autocomplete = "";
			colorBackground[] = {0,0,0,0};
			colorDisabled[] = {0.949,0.949,0.949,1};
			colorSelection[] = {0,0,0,0};
			colorText[] = {0.949,0.949,0.949,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.18);
			
		};
		
	};
	
};
