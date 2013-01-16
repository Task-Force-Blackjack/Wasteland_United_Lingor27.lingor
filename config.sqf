//	@file Version: 1.0
//	@file Name: config.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 20/11/2012 05:13
//	@file Description: Main config.

 //DEV 4
      
// --------------------------------------------------------------------------------------------------- \\
// ----------  !DO NOT CHANGE ANYTHING BELOW THIS POINT UNLESS YOU KNOW WHAT YOU ARE DOING!	---------- \\
// ----------																				---------- \\
// ----------			404Games are not responsible for anything that may happen 			---------- \\
// ----------			 as a result of unauthorised modifications to this file.			---------- \\
// --------------------------------------------------------------------------------------------------- \\
                                                                                                
//Client Vars
playerSetupComplete = false;
                                                                                                
//Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost, sell amount
weaponsArray = [
	["AK-74","AK_74",50,25],
	["AK-107 Kobra","AK_107_kobra",75,35],
	["AKM","AK_47_M",75,35],
    ["M16A4","M16A4",75,35],
    ["M4A1","M4A1",50,25],
    ["M4A1 CCO","M4A1_Aim",100,55],
    ["M1014","M1014",50,25],
    ["Saiga 12K","Saiga12K",100,55],
    ["M249","M249_EP1",250,120],
    ["Mk_48 Mod","Mk_48",250,140],
    ["M240","M240",250,120],
    ["Pecheneg","Pecheneg",250,100],
    ["RPG-7","RPG7V",300,130],
    ["SMAW","SMAW",300,175],
    ["Stinger","Stinger",1000,550],
    ["Javelin","Javelin",1500,750],
    ["Mk12 SPR","M4SPR",200,120],
    ["Mk17 Sniper","SCAR_H_LNG_Sniper",500,233],
    ["Mk17 Sniper SD","SCAR_H_LNG_Sniper_SD",750,455],
    ["M110 NV","M110_NVG_EP1",1000,666],
    ["Mk17 Sniper TWS","SCAR_H_STD_TWS_SD",3500,755],
    ["M107","m107",2000,850],
    ["M110 TWS","M110_TWS_EP1",5500,1000]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = [
	["30Rnd AK","30Rnd_545x39_AK",10],
	["AKM Mag","30Rnd_762x39_AK47",10],
	["30Rnd. STANAG","30Rnd_556x45_Stanag",10],
    ["30Rnd. STANAG SD","30Rnd_556x45_StanagSD",30],
    ["Mk17 Mag.","20Rnd_762x51_B_SCAR",25],
	["Mk17 SD Mag.","20Rnd_762x51_SB_SCAR",50],
	["10Rnd. M107","10Rnd_127x99_m107",50],
	["8Rnd. M1014 Slug","8Rnd_B_Beneli_74Slug",10],
	["8Rnd. Saiga 12K Slug","8Rnd_B_Saiga12_74Slug",10],
	["200Rnd. M249 Belt","200Rnd_556x45_M249",50],
	["100Rnd. M240","100Rnd_762x51_M240",25],
	["PKM Mag.","100Rnd_762x54_PK",25],
    ["PG-7V.","PG7V",85],
    ["SMAW-HEAA","SMAW_HEAA",100],
    ["Stinger Ammo","Stinger",225],
    ["Javelin Ammo","Javelin",250]
];

//Gun Store Equipment List
//Text name, classname, buy cost
accessoriesArray = [
	["Range Finder","Binocular_Vector",500],
	["NV Goggles","NVGoggles",100],
    ["GPS","ItemGPS", 90]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
generalStore = [
	["Water","water",localize "STR_WL_ShopDescriptions_Water","client\icons\water.paa",30,15],
	["Canned Food","canfood",localize "STR_WL_ShopDescriptions_CanFood","client\icons\cannedfood.paa",30,15],
	["Repair Kit","repairkits",localize "STR_WL_ShopDescriptions_RepairKit","client\icons\briefcase.paa",1000,500],
	["Medical Kit","medkits",localize "STR_WL_ShopDescriptions_MedKit","client\icons\medkit.paa",400,200],
	["Jerry Can (Full)","fuelFull",localize "STR_WL_ShopDescriptions_fuelFull","client\icons\jerrycan.paa",150,75],
    ["Jerry Can (Empty)","fuelEmpty",localize "STR_WL_ShopDescriptions_fuelEmpty","client\icons\jerrycan.paa",50,25],
	["Spawn Beacon","spawnBeacon",localize "STR_WL_ShopDescriptions_spawnBeacon","",3000,1500],
    ["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "",300,150]  
];

// Chernarus town and city array
//Marker Name, Radius, City Name
cityList = [
		["Town_0",500,"Maruko"],
		["Town_1",200,"Mercadio"],
		["Town_2",200,"Pusta"],
		["Town_3",300,"Drassen"],
		["Town_4",200,"Sanvigado"],			
		["Town_5",200,"Zuela"],
		["Town_6",300,"Medlina"],
		["Town_7",200,"Garibosa"],
		["Town_8",400,"Maruko Airport"],
		["Town_9",200,"Pintosa"],
		["Town_10",200,"Verto"],
		["Town_11",200,"Ralon"],
		["Town_12",250,"Bilbado"],
		["Town_13",250,"Melana"],
		["Town_14",200,"Lagosa"],
		["Town_15",200,"Barracks"],
		["Town_16",200,"Marcella"],
		["Town_17",500,"Calamar"],
		["Town_18",250,"El Villon"],
		["Town_19",200,"Palida"],
		["Town_20",200,"Monga"],
		["Town_21",300,"Victorin"],
		["Town_22",200,"Pavlovo"],
		["Town_23",200,"Faunaverde"],
		["Town_24",200,"Aguado"],
		["Town_25",200,"Aguado"],
		["Town_26",200,"Barro"],
		["Town_27",200,"Los Peligro"],
		["Town_28",300,"Race Track"],
		["Town_29",200,"Pulkovo"],
		["Town_30",200,"Nucca"],
		["Town_31",200,"Distrito Turistico"],
		["Town_32",200,"Regina Tributa"],
		["Town_33",200,"Benio"],
		["Town_34",200,"Fernando"],
		["Town_35",200,"Calixo"],
		["Town_36",250,"Corazon"],
		["Town_37",200,"Tucos"],
		["Town_38",250,"Guayucca"],
		["Town_39",200,"Manteria"],
		["Town_40",200,"San Isabel"],
		["Town_41",200,"Aculto"],
		["Town_42",200,"Eddie"],
		["Town_43",200,"Vidora"],
		["Town_44",200,"Prison"],
		["Town_45",200,"Conoteta"],
		["Town_46",200,"Cemarin"]
];
cityLocations = [];
