--==========================================================================================================================	
-- CIVILIZATIONS
--==========================================================================================================================	
--------------------------------	
-- Civilization_BuildingClassOverrides 
--------------------------------		
INSERT INTO Civilization_BuildingClassOverrides 
		(CivilizationType, 		BuildingClassType, 		BuildingType)
VALUES	('CIVILIZATION_GREECE',	'BUILDINGCLASS_MARKET',	'BUILDING_GREECE_AGORA');
--==========================================================================================================================	

--==========================================================================================================================
-- ARTDEFINES
--==========================================================================================================================	
------------------------------
-- IconTextureAtlases
------------------------------
INSERT INTO IconTextureAtlases 
		(Atlas, 							IconSize, 	Filename, 						IconsPerRow, 	IconsPerColumn)
VALUES	('BUILDING_GREECE_ATLAS', 			256, 		'AgoraPicture_256.dds',			1, 				1),
		('BUILDING_GREECE_ATLAS', 			128, 		'AgoraPicture_128.dds',			1, 				1),
		('BUILDING_GREECE_ATLAS', 			64, 		'AgoraPicture_064.dds',			1, 				1),
		('BUILDING_GREECE_ATLAS', 			45, 		'AgoraPicture_045.dds',			1, 				1);
--==========================================================================================================================	

--==========================================================================================================================	
-- BUILDINGS
--==========================================================================================================================	
------------------------------
-- Buildings
------------------------------	
INSERT INTO Buildings 	
			(Type,						BuildingClass,	GoldMaintenance, Cost, FaithCost,	EnhancedYieldTech, TechEnhancedTourism, AllowsRangeStrike, Defense,	ExtraCityHitPoints, TrainedFreePromotion,	CitySupplyFlat,	DefenseHappinessChange, GreatPeopleRateModifier,	GreatWorkSlotType, GreatWorkCount, FreshWater, FreeStartEra, Happiness, NeverCapture, PrereqTech, ArtDefineTag, SpecialistType,			SpecialistCount,	MinAreaSize, ConquestProb, HurryCostModifier,	TradeRouteRecipientBonus,	TradeRouteTargetBonus,	Help,										Description,						Civilopedia,								Strategy,										IconAtlas,					PortraitIndex)
SELECT		'BUILDING_GREECE_AGORA',	BuildingClass,	GoldMaintenance, Cost, FaithCost,	EnhancedYieldTech, TechEnhancedTourism, AllowsRangeStrike, Defense,	ExtraCityHitPoints, TrainedFreePromotion,	CitySupplyFlat,	DefenseHappinessChange,	GreatPeopleRateModifier,	GreatWorkSlotType, GreatWorkCount, FreshWater, FreeStartEra, Happiness, NeverCapture, PrereqTech, ArtDefineTag, SpecialistType,			SpecialistCount,	MinAreaSize, ConquestProb, HurryCostModifier,	TradeRouteRecipientBonus,	TradeRouteTargetBonus,	'TXT_KEY_BUILDING_GREECE_AGORA_HELP',	'TXT_KEY_BUILDING_GREECE_AGORA', 'TXT_KEY_BUILDING_GREECE_AGORA_TEXT',	'TXT_KEY_BUILDING_GREECE_AGORA_STRATEGY',	'BUILDING_GREECE_ATLAS',	0
FROM Buildings WHERE Type = 'BUILDING_MARKET';	
------------------------------	
-- Building_Flavors
------------------------------		
INSERT INTO Building_Flavors 	
			(BuildingType, 				FlavorType,						Flavor)
VALUES		('BUILDING_GREECE_AGORA',	'FLAVOR_GROWTH',				10),
			('BUILDING_GREECE_AGORA',	'FLAVOR_CULTURE',				20),
			('BUILDING_GREECE_AGORA',	'FLAVOR_GOLD',					100),
			('BUILDING_GREECE_AGORA',	'FLAVOR_PRODUCTION',			10),
			('BUILDING_GREECE_AGORA',	'FLAVOR_I_TRADE_DESTINATION',	30),
			('BUILDING_GREECE_AGORA',	'FLAVOR_I_TRADE_ORIGIN',		30),
			('BUILDING_GREECE_AGORA',	'FLAVOR_DIPLOMACY',				10);
------------------------------	
-- Building_ClassesNeededInCity
------------------------------		
INSERT INTO Building_ClassesNeededInCity 	
		(BuildingType, 				BuildingClassType)
SELECT	'BUILDING_GREECE_AGORA',	BuildingClassType
FROM Building_ClassesNeededInCity WHERE BuildingType = 'BUILDING_MARKET';
------------------------------	
-- Building_YieldChanges
------------------------------		
INSERT INTO Building_YieldChanges 	
			(BuildingType, 				YieldType,			Yield)
VALUES		('BUILDING_GREECE_AGORA',	'YIELD_CULTURE',	2),
			('BUILDING_GREECE_AGORA',	'YIELD_GOLD',		2);
------------------------------	
-- Building_YieldPerAlly
------------------------------
INSERT INTO Building_YieldPerAlly 	
			(BuildingType,				YieldType,		Yield)
VALUES		('BUILDING_GREECE_AGORA',	'YIELD_GOLD',	2);
------------------------------	
-- Building_ResourceYieldChanges
------------------------------
INSERT INTO Building_ResourceYieldChanges	
			(BuildingType,				ResourceType,		YieldType,			Yield)
VALUES		('BUILDING_GREECE_AGORA',	'RESOURCE_SUGAR',	'YIELD_FOOD',		1),
			('BUILDING_GREECE_AGORA',	'RESOURCE_SUGAR',	'YIELD_GOLD',		1),
			('BUILDING_GREECE_AGORA',	'RESOURCE_SPICES',	'YIELD_FOOD',		1),
			('BUILDING_GREECE_AGORA',	'RESOURCE_SPICES',	'YIELD_PRODUCTION',	1),
			('BUILDING_GREECE_AGORA',	'RESOURCE_WINE',	'YIELD_CULTURE',	1),
			('BUILDING_GREECE_AGORA',	'RESOURCE_OLIVE',	'YIELD_FOOD',		1);
------------------------------	
-- Building_UnitCombatProductionModifiers
------------------------------		
INSERT INTO Building_UnitCombatProductionModifiers 	
			(BuildingType, 				UnitCombatType,			Modifier)
VALUES		('BUILDING_GREECE_AGORA',	'UNITCOMBAT_DIPLOMACY',	20);
--==========================================================================================================================
--==========================================================================================================================

