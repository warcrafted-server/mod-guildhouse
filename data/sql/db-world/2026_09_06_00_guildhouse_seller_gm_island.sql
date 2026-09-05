-- Restaura el spawn del vendedor de Guild House (entry 500030) en GM Island, perdido tras
-- una restauración de base de datos: nunca estuvo versionado, se creaba a mano con `.npc add`.
DELETE FROM `creature` WHERE `id` = 500030 AND `map` = 1 AND `position_x` BETWEEN 16200 AND 16250 AND `position_y` BETWEEN 16250 AND 16300;

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(15000200, 500030, 1, 876, 876, 1, 1, 0, 16222.972, 16267.802, 13.136777, 1.461173, 300, 0, 0, 1220, 0, 0, 0, 0, 0, '', NULL, 0, 'Guildhouse Seller - GM Island');
