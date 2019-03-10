/*

    Author: RobérioJr

*/

class RJ_MenuSetagem
{
	idd = 3000;
	movingEnable = false;
	
	class ControlsBackground
	{
		class Fundo
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.27441407;
			y = safeZoneY + safeZoneH * 0.19097223;
			w = safeZoneW * 0.45117188;
			h = safeZoneH * 0.61805556;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0.5};
			colorText[] = {0.451,0.5961,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class NivelText
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.60644532;
			y = safeZoneY + safeZoneH * 0.390625;
			w = safeZoneW * 0.08984375;
			h = safeZoneH * 0.02777778;
			style = 2;
			text = "Nova Patente:";
			colorBackground[] = {0,0.0039,0,0};
			colorText[] = {0.8,0.8,0.8,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.25);
		};
		class Nome
		{
			type = 0;
			idc = 3001;
			x = safeZoneX + safeZoneW * 0.44042969;
			y = safeZoneY + safeZoneH * 0.25173612;
			w = safeZoneW * 0.1875;
			h = safeZoneH * 0.03645834;
			style = 0;
			text = "Nome: -";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.8,0.8,0.8,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2);
		};
		class SteamID
		{
			type = 0;
			idc = 3002;
			x = safeZoneX + safeZoneW * 0.44042969;
			y = safeZoneY + safeZoneH * 0.3125;
			w = safeZoneW * 0.1875;
			h = safeZoneH * 0.03645834;
			style = 0;
			text = "SteamID: -";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.8,0.8,0.8,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2);
		};
		class NivelAtual
		{
			type = 0;
			idc = 3003;
			x = safeZoneX + safeZoneW * 0.44042969;
			y = safeZoneY + safeZoneH * 0.37326389;
			w = safeZoneW * 0.1484375;
			h = safeZoneH * 0.03645834;
			style = 0;
			text = "Atual: -";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.8,0.8,0.8,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2);
		};
		class rj
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.28417969;
			y = safeZoneY + safeZoneH * 0.76388889;
			w = safeZoneW * 0.08007813;
			h = safeZoneH * 0.02777778;
			style = 0;
			text = "By: RobérioJr";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.8,0.8,0.8,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
	};
	class Controls
	{
		class Players
		{
			type = 5;
			idc = 3004;
			x = safeZoneX + safeZoneW * 0.29394532;
			y = safeZoneY + safeZoneH * 0.25173612;
			w = safeZoneW * 0.13867188;
			h = safeZoneH * 0.46527778;
			style = 16;
			colorBackground[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {0,0.102,0.502,1};
			colorText[] = {0.702,0.702,0.702,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.25);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			onLBSelChanged = "_this Spawn RJM_fnc_LBChangeSetagem";
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
			};
		};
		class Nivel
		{
			type = 4;
			idc = 3005;
			x = safeZoneX + safeZoneW * 0.59667969;
			y = safeZoneY + safeZoneH * 0.43402778;
			w = safeZoneW * 0.109375;
			h = safeZoneH * 0.03819445;
			style = 16;
			arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\RscCombo\arrow_combo_ca.paa";
			arrowFull = "\A3\ui_f\data\GUI\RscCommon\RscCombo\arrow_combo_active_ca.paa";
			colorBackground[] = {0,0,0,0.6};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {0,0.102,0.502,1};
			colorSelectBackground[] = {0,0,0,0.6};
			colorText[] = {0.8,0.8,0.8,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundCollapse[] = {"\A3\ui_f\data\sound\RscCombo\soundCollapse",0.1,1.0};
			soundExpand[] = {"\A3\ui_f\data\sound\RscCombo\soundExpand",0.1,1.0};
			soundSelect[] = {"\A3\ui_f\data\sound\RscCombo\soundSelect",0.1,1.0};
			wholeHeight = 0.3;
			class ComboScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
			};
		};
		class Setar
		{
			type = 1;
			idc = 3006;
			x = safeZoneX + safeZoneW * 0.47949219;
			y = safeZoneY + safeZoneH * 0.67708334;
			w = safeZoneW * 0.09960938;
			h = safeZoneH * 0.04513889;
			style = 0+2;
			text = "Setar";
			borderSize = 0;
			colorBackground[] = {0,0.0118,0,0.8};
			colorBackgroundActive[] = {0,0,0,0.8};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0.6,0,0,1};
			font = "PuristaBold";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.5);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
		};
	};
};
