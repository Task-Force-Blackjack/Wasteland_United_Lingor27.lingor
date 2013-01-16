
//	@file Version: 1.0
//	@file Name: serverCompile.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args:

if(!X_Server) exitWith {};

diag_log format["WASTELAND SERVER - Initilizing Server Complie"];

randomWeapons = compile preprocessFileLineNumbers "server\spawning\randomWeapon.sqf";
vehicleCreation = compile preprocessFileLineNumbers "server\spawning\vehicleCreation.sqf";
objectCreation = compile preprocessFileLineNumbers "server\spawning\objectCreation.sqf";
staticGunCreation = compile preprocessFileLineNumbers "server\spawning\staticGunCreation.sqf";
staticHeliCreation = compile preprocessFileLineNumbers "server\spawning\staticHeliCreation.sqf";
staticBoatCreation = compile preprocessFileLineNumbers "server\spawning\staticBoatCreation.sqf";
server_playerDied = compile preprocessFileLineNumbers "server\functions\serverPlayerDied.sqf";
staticwildlifeCreation = compile preprocessFileLineNumbers "server\spawning\staticwildlifeCreation.sqf";
StaticPlaneCreation = compile preprocessFileLineNumbers "server\spawning\staticPlaneCreation.sqf";
serverCompiledScripts = true;