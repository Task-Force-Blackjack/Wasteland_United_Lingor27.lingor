//	@file Version: 1.0
//	@file Name: staticboatSpawning.sqf
//	@file Author: [404] Costlyy
//	@file Created: 20/12/2012 21:00
//	@file Description: Random static planes
//	@file Args:

if(!X_Server) exitWith {};

waitUntil{staticwildlifeSpawningComplete};

private ["_counter","_position","_markerName","_marker","_hint","_newPos","_countActual", "_i", "_doSpawnWreck"];
_counter = 0;
_countActual = 0;
_i = 0;

diag_log format["Static Plane Spawning Started"];

while {_counter < 7} do // 7 planes spawn at the beginning
{
	_selectedMarker = floor (random 7);
    _position = getMarkerPos format ["plane_%1", _selectedMarker];
    _newPos = [_position, 2, 50, 1, 0, 60 * (pi / 180), 0] call BIS_fnc_findSafePos;
	[0, _newPos] call staticPlainCreation;
    
	currentStaticPlanes set [count currentStaticPlanes, _selectedMarker];
         
                   
    /*_markerName = format["marker%1",_counter];
	_marker = createMarker [_markerName, _newPos];
	_marker setMarkerType "dot";
	_marker setMarkerSize [1.25, 1.25];
	_marker setMarkerColor "ColorRed";
    */
    _counter = _counter + 1;
    _countActual = _countActual + 1;
};

//{diag_log format["plane %1 = %2",_forEachIndex, _x];} forEach currentStaticPlanes;

for "_i" from 1 to 7 do {
    _doSpawnWreck = true;
    
    { // Check if current iteration already exists as a live plane...
    	if (_i == _x) then {
			_doSpawnWreck = false;
        };
    } forEach currentStaticPlanes;
    
    if (_doSpawnWreck) then {
    	_position = getMarkerPos format ["plane_%1", _i];
    	_newPos = [_position, 2, 50, 1, 0, 60 * (pi / 180), 0] call BIS_fnc_findSafePos;
		[1, _newPos] call staticPlaneCreation;
        
        /*
    	_markerName = format["marker%1",_i];
		_marker = createMarker [_markerName, _newPos];
		_marker setMarkerType "dot";
		_marker setMarkerSize [1.25, 1.25];
		_marker setMarkerColor "ColorBlue";
        */
    };
};

diag_log format["WASTELAND SERVER - %1 Static planes Spawned",_countActual];
staticPlaneSpawningComplete = true;