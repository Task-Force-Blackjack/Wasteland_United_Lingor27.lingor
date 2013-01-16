//	@file Version: 1.0
//	@file Name: staticplainCreation.sqf
//	@file Author: [404] Costlyy
//	@file Created: 20/12/2012 21:00
//	@file Description: Random static planes
//	@file Args: [int (0 = not wreck | 1 = wreck), array (position)]

if(!X_Server) exitWith {};

private["_spawnPos", "_spawnType", "_currPlane"];

_isWreck = _this select 0;
_spawnPos = _this select 1;

if (_isWreck == 0) then {
	//diag_log "Spawning plane complete...";
	_spawnType = staticPlaneList select (random (count staticPlaneList - 1));
	_currPlane = createVehicle [_spawnType,_spawnPos,[], 50,"None"]; 
	
	_currPlane setpos [getpos _currplane select 0,getpos _currplane select 1,0];
	
	clearMagazineCargoGlobal _currPlane;
	clearWeaponCargoGlobal _currPlane;
	
	//Set original status to stop ner-do-wells
	_currplane setVariable["original",1,true];
	
	_currPlane setDamage .51; // Damages plane on this spot so it needs fuel and repair.
};