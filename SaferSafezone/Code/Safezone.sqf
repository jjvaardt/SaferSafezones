
//created by Sp!ts

// Thanks to ExileZ 2.0 by Patrix87 of http:\\multi-jeux.quebec For some of the code//

//Variable declaration
private [
	"_position",
	"_trigger",
	"_nearestLocation",
	"_radius"
];


_position = (_this select 0) select 0;
_radius = (_this select 0) select 1;
_nearestLocation = text nearestLocation [_position, ""];

//Create trigger area
_trigger = createTrigger["EmptyDetector", _position];
_trigger setTriggerArea[_radius, _radius, 0, true];
_trigger setTriggerActivation["EAST", "PRESENT", TRUE];
_trigger setTriggerStatements["this && {vehicle _x isKindOf 'Man'} count thislist > 0", "{if (_x isKindOf 'Man') then {_x setdamage 1; deleteVehicle _x;}; }foreach thislist;", ""];