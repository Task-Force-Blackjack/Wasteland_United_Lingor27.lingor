//	@file Version: 1.0
//	@file Name: makeoutpostweapons.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 08/12/2012 15:19
//	@file Args:

if(!X_Server) exitWith {};

private ["_crate"];

_crate = _this select 0;

clearMagazineCargoGlobal _crate;
clearWeaponCargoGlobal _crate;

_crate addWeaponCargoGlobal ["BAF_LRR_scoped",3];
_crate addWeaponCargoGlobal ["KVSK",2];
_crate addWeaponCargoGlobal ["M249_m145_EP1",3];
_crate addWeaponCargoGlobal ["Igla",1];	 
_crate addWeaponCargoGlobal ["Sa61_EP1",6];
   
_crate addMagazineCargoGlobal ["20Rnd_B_765x17_Ball",30];
_crate addMagazineCargoGlobal ["5Rnd_86x70_L115A1",36];
_crate addMagazineCargoGlobal ["HandGrenade",5];
_crate addMagazineCargoGlobal ["5Rnd_127x108_KSVK",24];
_crate addMagazineCargoGlobal ["200Rnd_556x45_M249",18];
_crate addMagazineCargoGlobal ["Igla",4];