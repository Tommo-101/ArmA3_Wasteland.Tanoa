//	@file Version: 1.0
//	@file Name: intro.sqf
//	@file Author: Cael817, original file by HellsGateGaming.com and IT07
//	@file Created: 20140724 19:34

_onScreenTime = 8;

sleep 20;

_role1 = "Thompson's Battleground Wasteland Altis";
_role1names = ["Original Mod by AgentRev, edited by Tommo"];
_role2 = "Battle other factions";
_role2names = ["Take back territories from other factions to gain control"];
_role3 = "Spawning";
_role3names = ["Capturing more territories gain your factions more spawn locations"];
_role4 = "Missions";
_role4names = ["Complete missions to gain more weapons and money"];
_role5 = "";
_role5names = [""];
_role6 = "Join Us";
_role6names = ["Join our discord www.tbg.nn.pe/discord"];



{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.50' color='#106BC6' align='left'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#1186D0' align='left'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [

[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names]
];
