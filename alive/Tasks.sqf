if (!isServer) exitWith {};
waitUntil {!isNil "ALiVE_STATIC_DATA_LOADED"};

// Task Objects
	ALIVE_taskObjects = [] call ALIVE_fnc_hashCreate;
	[ALIVE_taskObjects, "chairs", ["Land_CampingChair_V1_F","Land_CampingChair_V2_F","Land_ChairPlastic_F","Land_ChairWood_F"]] call ALIVE_fnc_hashSet;
	[ALIVE_taskObjects, "tables", ["Land_CampingTable_F","Land_TableDesk_F","Land_WoodenTable_large_F","Land_WoodenTable_small_F"]] call ALIVE_fnc_hashSet;
	[ALIVE_taskObjects, "documents", ["Land_Document_01_F","Land_File1_F","Land_FilePhotos_F","Land_File2_F","Land_File_research_F","Land_Photos_V1_F","Land_Photos_V2_F","Land_Photos_V3_F"]] call ALIVE_fnc_hashSet;
	[ALIVE_taskObjects, "treasure", ["Land_Money_F"]] call ALIVE_fnc_hashSet;
	[ALIVE_taskObjects, "medical", ["Land_Antibiotic_F","Land_Bandage_F","Land_BloodBag_F","Land_Defibrillator_F","Land_DisinfectantSpray_F","Land_HeatPack_F","Land_PainKillers_F","Land_VitaminBottle_F","Land_WaterPurificationTablets_F"]] call ALIVE_fnc_hashSet;
	[ALIVE_taskObjects, "electronics", ["Land_SatellitePhone_F","Land_PortableLongRangeRadio_F","Land_MobilePhone_smart_F","Land_MobilePhone_old_F","Land_HandyCam_F","Land_Laptop_F","Land_Laptop_device_F","Land_Laptop_unfolded_F","Land_FMradio_F","Land_SurvivalRadio_F"]] call ALIVE_fnc_hashSet;

// Generated Tasks
	private["_options","_tasksData","_taskData","_taskData"];

	ALIVE_generatedTasks = [] call ALIVE_fnc_hashCreate;

	ALIVE_autoGeneratedTasks = ["MilAssault","MilDefence","CivAssault","Assassination","DestroyVehicles","DestroyInfantry","SabotageBuilding","DestroyBuilding","OCA"];

// Military Objective Assault Task

	_options = [];

	_tasksData = [] call ALIVE_fnc_hashCreate;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Assault Objective"] call ALIVE_fnc_hashSet;
	[_taskData,"description","Assault the objective, neutralising all enemy and denying any weapons and materiel."] call ALIVE_fnc_hashSet;
	[_tasksData,"Parent",_taskData] call ALIVE_fnc_hashSet;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Establish Overwatch"] call ALIVE_fnc_hashSet;
	[_taskData,"description","Proceed to an overwatch position near %1 in order to confirm enemy dispositions prior to assaulting the objective."] call ALIVE_fnc_hashSet;
	[_taskData,"chat_start",[["HQ","Establish overwatch at position near %1 and prepare to assault the objective, Over"],["PLAYERS","Roger Out"]]] call ALIVE_fnc_hashSet;
	[_tasksData,"Travel",_taskData] call ALIVE_fnc_hashSet;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Neutralise Enemy"] call ALIVE_fnc_hashSet;
	[_taskData,"description","Neutralise all enemy in the vicinity in order to secure the objective"] call ALIVE_fnc_hashSet;
	[_taskData,"chat_start",[["PLAYERS","My callsign established in overwatch position, Over"],["HQ","Assault Objective"]]] call ALIVE_fnc_hashSet;
	[_taskData,"chat_success",[["PLAYERS","All enemy in the area have been neutralised, objective is secure, Over"],["HQ","Roger, send SITREP and standby for further tasking, Out."]]] call ALIVE_fnc_hashSet;
	[_taskData,"reward",["forcePool",10]] call ALIVE_fnc_hashSet;
	[_tasksData,"Destroy",_taskData] call ALIVE_fnc_hashSet;

	_options set [count _options,_tasksData];

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Attack Emplacement"] call ALIVE_fnc_hashSet;
	[_taskData,"description","Attack the enemy held position in order to deny mission critical assets."] call ALIVE_fnc_hashSet;
	[_tasksData,"Parent",_taskData] call ALIVE_fnc_hashSet;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Move to Forming Up Point"] call ALIVE_fnc_hashSet;
	[_taskData,"description","Move to an FUP near %1 in preparation for conducting an assault on the enemy held emplacement."] call ALIVE_fnc_hashSet;
	[_taskData,"chat_start",[["HQ","Move to an FUP near %1 and prepare to assault the emplacement, Over"],["PLAYERS","Roger Out"]]] call ALIVE_fnc_hashSet;
	[_tasksData,"Travel",_taskData] call ALIVE_fnc_hashSet;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Attack Objective"] call ALIVE_fnc_hashSet;
	[_taskData,"description","Attack the objective and neutralise all enemy forces in the vicinity."] call ALIVE_fnc_hashSet;
	[_taskData,"chat_start",[["PLAYERS","Am at FUP standing by, over."],["HQ","Attack Emplacement"]]] call ALIVE_fnc_hashSet;
	[_taskData,"chat_success",[["PLAYERS","Objective secure, standing by for further orders, over"],["HQ","Roger, send SITREP and await taskings, Out."]]] call ALIVE_fnc_hashSet;
	[_taskData,"reward",["forcePool",10]] call ALIVE_fnc_hashSet;
	[_tasksData,"Destroy",_taskData] call ALIVE_fnc_hashSet;

	_options set [count _options,_tasksData];

	[ALIVE_generatedTasks, "MilAssault", ["Military Objective Assault",_options]] call ALIVE_fnc_hashSet;

// Military Objective Capture Task

	_options = [];

	_tasksData = [] call ALIVE_fnc_hashCreate;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Capture Objective"] call ALIVE_fnc_hashSet;
	[_taskData,"description","Capture the objective near %1, neutralising all enemy and denying any weapons and materiel."] call ALIVE_fnc_hashSet;
	[_tasksData,"Parent",_taskData] call ALIVE_fnc_hashSet;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Clear Area of Enemy"] call ALIVE_fnc_hashSet;
	[_taskData,"description","Neutralise all enemy in the vicinity in order to secure the objective. Friendly forces will be in the area."] call ALIVE_fnc_hashSet;
	[_taskData,"chat_start",[["HQ","We need immediate assistance in capturing an objective near %1, assault objective, watch for friendlies. Over."],["PLAYERS","Roger Out"]]] call ALIVE_fnc_hashSet;
	[_taskData,"chat_success",[["PLAYERS","All enemy in the area have been neutralised, objective is secure, Over"],["HQ","Roger, send SITREP and standby for further tasking, Out."]]] call ALIVE_fnc_hashSet;
	[_taskData,"reward",["forcePool",20]] call ALIVE_fnc_hashSet;
	[_tasksData,"Destroy",_taskData] call ALIVE_fnc_hashSet;

	_options set [count _options,_tasksData];

	[ALIVE_generatedTasks, "CaptureObjective", ["Capture Military Objective",_options]] call ALIVE_fnc_hashSet;

// Military Objective Defence Task

	_options = [];

	_tasksData = [] call ALIVE_fnc_hashCreate;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Defend Objective"] call ALIVE_fnc_hashSet;
	[_taskData,"description","Defend the friendly objective."] call ALIVE_fnc_hashSet;
	[_tasksData,"Parent",_taskData] call ALIVE_fnc_hashSet;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Proceed to the objective"] call ALIVE_fnc_hashSet;
	[_taskData,"description","Move to the objective near %1, establish a defensive position and prepare for incoming enemy forces"] call ALIVE_fnc_hashSet;
	[_taskData,"chat_start",[["HQ","Move to the objective near %1, establish a defensive position and prepare for incoming enemy forces"],["PLAYERS","Roger Out"]]] call ALIVE_fnc_hashSet;
	[_tasksData,"Travel",_taskData] call ALIVE_fnc_hashSet;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Hold the objective"] call ALIVE_fnc_hashSet;
	[_taskData,"description","Hold position and defeat the incoming enemy attack."] call ALIVE_fnc_hashSet;
	[_taskData,"chat_start",[["PLAYERS","My callsign established in defence at objective location, Over"],["HQ","Hold the objective"]]] call ALIVE_fnc_hashSet;
	[_taskData,"chat_success",[["PLAYERS","Enemy forces have been defeated in detail, objective is secure, Over"],["HQ","Roger, send SITREP and standby for further tasking, Out."]]] call ALIVE_fnc_hashSet;
	[_taskData,"chat_missile_strike",[["HQ","Critical information: suspected missile strike inbound your location, take cover, Over"],["PLAYERS","Roger, Out"]]] call ALIVE_fnc_hashSet;
	[_taskData,"reward",["forcePool",20]] call ALIVE_fnc_hashSet;
	[_tasksData,"DefenceWave",_taskData] call ALIVE_fnc_hashSet;

	_options set [count _options,_tasksData];

	[ALIVE_generatedTasks, "MilDefence", ["Military Objective Defence",_options]] call ALIVE_fnc_hashSet;

// Civilian Objective Assault Task

	_options = [];

	_tasksData = [] call ALIVE_fnc_hashCreate;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Attack the civilian objective"] call ALIVE_fnc_hashSet;
	[_taskData,"description","Attack the enemy held civlian objective."] call ALIVE_fnc_hashSet;
	[_tasksData,"Parent",_taskData] call ALIVE_fnc_hashSet;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Clear the town"] call ALIVE_fnc_hashSet;
	[_taskData,"description","Clear all enemy forces from the town near %1."] call ALIVE_fnc_hashSet;
	[_taskData,"chat_start",[["HQ","Clear all enemy forces from the town near %1"],["PLAYERS","Roger Out."]]] call ALIVE_fnc_hashSet;
	[_taskData,"chat_success",[["PLAYERS","Town cleared of enemy forces, objective secure, over"],["HQ","Roger, reorg and send STIREP. Standby for further orders, Out."]]] call ALIVE_fnc_hashSet;
	[_taskData,"reward",["forcePool",10]] call ALIVE_fnc_hashSet;
	[_tasksData,"Destroy",_taskData] call ALIVE_fnc_hashSet;

	_options set [count _options,_tasksData];

	[ALIVE_generatedTasks, "CivAssault", ["Civilian Objective Assault",_options]] call ALIVE_fnc_hashSet;

// HVT Task

	_options = [];

	_tasksData = [] call ALIVE_fnc_hashCreate;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Kill the HVT"] call ALIVE_fnc_hashSet;
	[_taskData,"description","Kill the high value target."] call ALIVE_fnc_hashSet;
	[_tasksData,"Parent",_taskData] call ALIVE_fnc_hashSet;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Eliminate the target"] call ALIVE_fnc_hashSet;
	[_taskData,"description","We received HUMINT of an High Value Target (HVT) near %1! Eliminate the target as quickly as possible!"] call ALIVE_fnc_hashSet;
	[_taskData,"chat_start",[["HQ","We received HUMINT of an High Value Target (HVT) near %1! Eliminate the target as quickly as possible!"],["PLAYERS","Roger that"]]] call ALIVE_fnc_hashSet;
	[_taskData,"chat_success",[["PLAYERS","High Value Target neutralised, Over"],["HQ","Roger, well done, Out"]]] call ALIVE_fnc_hashSet;
	[_taskData,"chat_failed",[["PLAYERS","Mission aborted, HVT has escaped, Over"],["HQ","Roger, better luck next time, Out"]]] call ALIVE_fnc_hashSet;
	[_taskData,"chat_cancelled",[["PLAYERS","Callsign compromised, mission aborted, Over"],["HQ","Roger, break contact and withdraw. Send SITREP when ready, Out"]]] call ALIVE_fnc_hashSet;
	[_taskData,"reward",["forcePool",10]] call ALIVE_fnc_hashSet;
	[_tasksData,"Destroy",_taskData] call ALIVE_fnc_hashSet;

	_options set [count _options,_tasksData];

	[ALIVE_generatedTasks, "Assassination", ["HVT Assassination",_options]] call ALIVE_fnc_hashSet;


// Destroy Vehicles Task

	_options = [];

	_tasksData = [] call ALIVE_fnc_hashCreate;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Search and Destroy Vehicles"] call ALIVE_fnc_hashSet;
	[_taskData,"description","Int indicates an enemy %1 in the vicinity of %2."] call ALIVE_fnc_hashSet;
	[_tasksData,"Parent",_taskData] call ALIVE_fnc_hashSet;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Destroy the vehicles"] call ALIVE_fnc_hashSet;
	[_taskData,"description","We have reliable intelligence of a %1 vehicle operating in the area near %2.  Find, fix and destroy the vehicles before they leave the area."] call ALIVE_fnc_hashSet;
	[_taskData,"chat_start",[["HQ","We have reliable intelligence of a %1 vehicle operating in the area near %2.  Find, fix and destroy the vehicles before they leave the area, Over!"],["PLAYERS","Roger, moving to location now, Out"]]] call ALIVE_fnc_hashSet;
	[_taskData,"chat_success",[["PLAYERS","Enemy vehicles confirmed neutralised, Over"],["HQ","Roger, well done.  Standby for further taskings, Out!"]]] call ALIVE_fnc_hashSet;
	[_taskData,"reward",["forcePool",10]] call ALIVE_fnc_hashSet;
	[_tasksData,"Destroy",_taskData] call ALIVE_fnc_hashSet;

	_options set [count _options,_tasksData];

	[ALIVE_generatedTasks, "DestroyVehicles", ["Destroy the Vehicles",_options]] call ALIVE_fnc_hashSet;

// SEAD Task

	_options = [];

	_tasksData = [] call ALIVE_fnc_hashCreate;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Suppress Enemy Air Defenses"] call ALIVE_fnc_hashSet;
	[_taskData,"description","Int indicates enemy ground based air defenses (GBAD) in the vicinity of %2."] call ALIVE_fnc_hashSet;
	[_tasksData,"Parent",_taskData] call ALIVE_fnc_hashSet;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Destroy Enemy Air Defense"] call ALIVE_fnc_hashSet;
	[_taskData,"description","IMINT and SIGINT indicate a %1 GBAD in the area near %2.  Find, fix and destroy the enemy air defenses as soon as possible."] call ALIVE_fnc_hashSet;
	[_taskData,"chat_start",[["HQ","Caution! %1 GBAD detected near %2, eliminate target ASAP. Over!"],["PLAYERS","Roger, moving to location now, Out"]]] call ALIVE_fnc_hashSet;
	[_taskData,"chat_success",[["PLAYERS","Enemy GBAD confirmed neutralised, Over"],["HQ","Roger, well done.  Standby for further taskings, Out!"]]] call ALIVE_fnc_hashSet;
	[_taskData,"reward",["forcePool",50]] call ALIVE_fnc_hashSet;
	[_tasksData,"Destroy",_taskData] call ALIVE_fnc_hashSet;

	_options set [count _options,_tasksData];

	[ALIVE_generatedTasks, "SEAD", ["Suppress Enemy Air Defenses",_options]] call ALIVE_fnc_hashSet;

// Destroy Infantry Task

	_options = [];

	_tasksData = [] call ALIVE_fnc_hashCreate;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Destroy the infantry"] call ALIVE_fnc_hashSet;
	[_taskData,"description","Intelligence suggests a group of infantry in the area near %1."] call ALIVE_fnc_hashSet;
	[_tasksData,"Parent",_taskData] call ALIVE_fnc_hashSet;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Destroy the infantry"] call ALIVE_fnc_hashSet;
	[_taskData,"description","We received intelligence about infantry units near %1! Destroy the infantry!"] call ALIVE_fnc_hashSet;
	[_taskData,"chat_start",[["HQ","We received intelligence about infantry units near %1! Destroy the infantry!"],["PLAYERS","Roger that"]]] call ALIVE_fnc_hashSet;
	[_taskData,"chat_success",[["PLAYERS","Infantry units have been destroyed"],["HQ","Roger that, well done!"]]] call ALIVE_fnc_hashSet;
	[_taskData,"reward",["forcePool",10]] call ALIVE_fnc_hashSet;
	[_tasksData,"Destroy",_taskData] call ALIVE_fnc_hashSet;

	_options set [count _options,_tasksData];

	[ALIVE_generatedTasks, "DestroyInfantry", ["Destroy the Infantry Units",_options]] call ALIVE_fnc_hashSet;

// Sabotage Building Task

	_options = [];

	_tasksData = [] call ALIVE_fnc_hashCreate;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Sabotage near %1"] call ALIVE_fnc_hashSet;
	[_taskData,"description","Destroy the %2 near %1!"] call ALIVE_fnc_hashSet;
	[_tasksData,"Parent",_taskData] call ALIVE_fnc_hashSet;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Destroy %1"] call ALIVE_fnc_hashSet;
	[_taskData,"description","We received intelligence about a strategically important %3 near %1! Destroy the %2!"] call ALIVE_fnc_hashSet;
	[_taskData,"chat_start",[["HQ","We received intelligence about a strategically relevant position near %1! Destroy the objective!"],["PLAYERS","Roger that"]]] call ALIVE_fnc_hashSet;
	[_taskData,"chat_success",[["PLAYERS","The objective has been destroyed!"],["HQ","Roger that, well done!"]]] call ALIVE_fnc_hashSet;
	[_taskData,"reward",["forcePool",10]] call ALIVE_fnc_hashSet;
	[_tasksData,"Destroy",_taskData] call ALIVE_fnc_hashSet;

	_options set [count _options,_tasksData];

	[ALIVE_generatedTasks, "SabotageBuilding", ["Sabotage Installation",_options]] call ALIVE_fnc_hashSet;

// Destroy Building Task

	_options = [];

	_tasksData = [] call ALIVE_fnc_hashCreate;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Destroy Building near %1"] call ALIVE_fnc_hashSet;
	[_taskData,"description","Destroy the %2 near %1!"] call ALIVE_fnc_hashSet;
	[_tasksData,"Parent",_taskData] call ALIVE_fnc_hashSet;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Destroy %1"] call ALIVE_fnc_hashSet;
	[_taskData,"description","We received intelligence about a strategically important %3 near %1! Destroy the %2!"] call ALIVE_fnc_hashSet;
	[_taskData,"chat_start",[["HQ","We received intelligence about a strategically relevant position near %1! Destroy the objective!"],["PLAYERS","Roger that"]]] call ALIVE_fnc_hashSet;
	[_taskData,"chat_success",[["PLAYERS","The objective has been destroyed!"],["HQ","Roger that, well done!"]]] call ALIVE_fnc_hashSet;
	[_taskData,"reward",["forcePool",10]] call ALIVE_fnc_hashSet;
	[_tasksData,"Destroy",_taskData] call ALIVE_fnc_hashSet;

	_options set [count _options,_tasksData];

	[ALIVE_generatedTasks, "DestroyBuilding", ["Destroy Installation",_options]] call ALIVE_fnc_hashSet;

// OCA Task

	_options = [];

	_tasksData = [] call ALIVE_fnc_hashCreate;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Offensive Counter Air "] call ALIVE_fnc_hashSet;
	[_taskData,"description","Deny Airfield near %1!"] call ALIVE_fnc_hashSet;
	[_tasksData,"Parent",_taskData] call ALIVE_fnc_hashSet;

	_taskData = [] call ALIVE_fnc_hashCreate;
	[_taskData,"title","Destroy Airfield near %1"] call ALIVE_fnc_hashSet;
	[_taskData,"description","We received intelligence about a strategically important airfield near %1! Deny the airfield by destroying critical infrastructure! Destroy at least 3 buildings around the runway or helipad."] call ALIVE_fnc_hashSet;
	[_taskData,"chat_start",[["HQ","We received intelligence about an airfield near %1. Authorized to deny airfield with heavy ordanance!"],["PLAYERS","Roger that"]]] call ALIVE_fnc_hashSet;
	[_taskData,"chat_success",[["PLAYERS","The objective has been crippled!"],["HQ","Roger that, well done!"]]] call ALIVE_fnc_hashSet;
	[_taskData,"reward",["forcePool",50]] call ALIVE_fnc_hashSet;
	[_tasksData,"Destroy",_taskData] call ALIVE_fnc_hashSet;

	_options set [count _options,_tasksData];

	[ALIVE_generatedTasks, "OCA", ["Offensive Counter Air",_options]] call ALIVE_fnc_hashSet;