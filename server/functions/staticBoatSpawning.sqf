//	@file Version: 1.0
//	@file Name: staticboatSpawning.sqf
//	@file Author: [404] Costlyy
//	@file Created: 20/12/2012 21:00
//	@file Description: Random static boats
//	@file Args:

if(!X_Server) exitWith {};

waitUntil{staticHeliSpawningComplete};

private ["_counter","_position","_markerName","_marker","_hint","_newPos","_countActual", "_i", "_doSpawnWreck"];
_counter = 0;
_countActual = 0;
_i = 0;

diag_log format["Static boat Spawning Started"];

while {_counter < 24} do // 12 boats spawn at the beginning
{
	_selectedMarker = floor (random 17);
    _position = getMarkerPos format ["dock_%1", _selectedMarker];
    _newPos = [_position, 2, 25, 1, 2, 5, 1] call BIS_fnc_findSafePos;
	[0, _newPos] call staticboatCreation;
    
	currentStaticboats set [count currentStaticboats, _selectedMarker];
         
                   
    /*_markerName = format["marker%1",_counter];
	_marker = createMarker [_markerName, _newPos];
	_marker setMarkerType "dot";
	_marker setMarkerSize [1.25, 1.25];
	_marker setMarkerColor "ColorRed";
    */
    _counter = _counter + 1;
    _countActual = _countActual + 1;
};

//{diag_log format["boat %1 = %2",_forEachIndex, _x];} forEach currentStaticboats;

for "_i" from 1 to 24 do {
    _doSpawnWreck = true;
    
    { // Check if current iteration already exists as a live boat...
    	if (_i == _x) then {
			_doSpawnWreck = false;
        };
    } forEach currentStaticboats;
    
    if (_doSpawnWreck) then {
    	_position = getMarkerPos format ["dock_%1", _i];
    	_newPos = [_position, 2, 25, 1, 2, 5, 1] call BIS_fnc_findSafePos;
		[1, _newPos] call staticboatCreation;
        
        /*
    	_markerName = format["marker%1",_i];
		_marker = createMarker [_markerName, _newPos];
		_marker setMarkerType "dot";
		_marker setMarkerSize [1.25, 1.25];
		_marker setMarkerColor "ColorBlue";
        */
    };
};

diag_log format["WASTELAND SERVER - %1 Static boats Spawned",_countActual];
staticboatSpawningComplete = true;