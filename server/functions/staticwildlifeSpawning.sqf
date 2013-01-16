//	@file Version: 1.0
//	@file Name: staticwildlifepawning.sqf
//	@file Author: [404] Costlyy
//	@file Created: 20/12/2012 21:00
//	@file Description: Random static wild life
//	@file Args:

if(!X_Server) exitWith {};

waitUntil{staticBoatSpawningComplete};

private ["_counter","_position","_markerName","_marker","_hint","_newPos","_countActual", "_i"];
_counter = 0;
_countActual = 0;
_i = 0;

diag_log format["Static Wild Life Spawning Started"];

while {_counter < 13} do // 13 Animals spawn at the beginning
{
	_selectedMarker = floor (random 13);
    _position = getMarkerPos format ["wlife_%1", _selectedMarker];
    _newPos = [_position, 2, 15, 1, 2, 5, 0] call BIS_fnc_findSafePos;
	[0, _newPos] call staticwildlifeCreation;
    
	currentStaticwildlife set [count currentStaticwildlife, _selectedMarker];
         
                   
    /*_markerName = format["marker%1",_counter];
	_marker = createMarker [_markerName, _newPos];
	_marker setMarkerType "dot";
	_marker setMarkerSize [1.25, 1.25];
	*/_marker setMarkerColor "ColorRed";
    
    _counter = _counter + 1;
    _countActual = _countActual + 1;
};

diag_log format["WASTELAND SERVER - %1 Static Wild Life Spawned",_countActual];
staticwildlifeSpawningComplete = true;