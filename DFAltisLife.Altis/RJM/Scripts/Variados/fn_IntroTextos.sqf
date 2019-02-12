
_onScreenTime = 5;

﻿sleep 120; //Wait in seconds before the credits start after player is in-game

_role1 = "Welcome to Altis Life";
_role1names = ["A Framework by Tonic"];
_role2 = "Improved upon";
_role2names = ["By The OLG Dev Team"];
_role3 = "Visit Our Website at";
_role3names = ["www.oneliferoleplay.com"];
_role4 = "Join Our Teamspeak at";
_role4names = ["173.234.27.145:10021"];
_role5 = "Please enjoy your stay";
_role5names = [profileName];
{
	sleep 2;
	_memberFunction = _x select 0;
	_memberNames = _x select 1;
	_finalText = format ["<t size='0.55' color='#ff0000' align='right'>%1<br /></t>", _memberFunction];
	_finalText = _finalText + "<t size='0.70' color='#ffffff' align='right'>";
	{ _finalText = _finalTe﻿xt + format ["%1<br />", _x] } forEach _memberNames;
	_finalText = _finalText + "</t>";
	_onScreenTime + (((count _memberNames) - 1) * 0.9);
	[
		_finalText,
		[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
		[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
		_onScreenTime,
		﻿0.5
	﻿] spawn BIS_fnc_dynamicText;
	sleep (_onScreenTime);
} forEach [
	[_role1, _role1names],
	[_role2, _role2names],
	﻿[_role3, _role3names],
	[_role4, _role4names],
	[_role5, _role5names]
﻿];