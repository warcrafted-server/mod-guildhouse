-- Class trainers y profession trainers/vendors propios del módulo (entries 500040-500066).
-- Clonados de los NPC reales de ciudad, pero como creature_template independiente: nunca
-- modificar el creature_template/npc_vendor/creature_queststarter de los entries reales
-- (26327, 2836, 18773, etc.), afectaría a esos NPC en todo el mundo, no solo en la guild house.
SET @C_TEMPLATE = 500030;

DELETE FROM `creature_template` WHERE `entry` BETWEEN @C_TEMPLATE + 10 AND @C_TEMPLATE + 36;

INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
-- Class trainers (offset 10-19). npcflag: 48=GOSSIP+TRAINER+TRAINER_CLASS base; +2 QUESTGIVER donde se añade misión de clase.
	(@C_TEMPLATE + 10, 0, 0, 0, 0, 0, 'Death Knight Trainer', NULL, NULL, 0, 80, 80, 0, 2050, 49, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 11, 0, 0, 0, 0, 0, 'Druid Trainer', NULL, NULL, 0, 70, 70, 0, 35, 50, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 2, 768, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 12, 0, 0, 0, 0, 0, 'Hunter Trainer', NULL, NULL, 0, 70, 70, 0, 35, 48, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 1, 768, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 13, 0, 0, 0, 0, 0, 'Mage Trainer', NULL, NULL, 0, 70, 70, 0, 35, 48, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 8, 768, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 14, 0, 0, 0, 0, 0, 'Paladin Trainer', NULL, NULL, 0, 70, 70, 0, 35, 50, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 2, 768, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 15, 0, 0, 0, 0, 0, 'Priest Trainer', NULL, NULL, 0, 70, 70, 0, 35, 48, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 8, 768, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 16, 0, 0, 0, 0, 0, 'Rogue Trainer', NULL, NULL, 0, 70, 70, 0, 35, 48, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 1, 768, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 17, 0, 0, 0, 0, 0, 'Shaman Trainer', NULL, NULL, 0, 70, 70, 0, 35, 50, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 2, 768, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 18, 0, 0, 0, 0, 0, 'Warlock Trainer', NULL, NULL, 0, 70, 70, 0, 35, 50, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 8, 768, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 19, 0, 0, 0, 0, 0, 'Warrior Trainer', NULL, NULL, 0, 70, 70, 0, 35, 48, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 1, 768, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
-- Profession trainers/vendors (offset 20-36). npcflag real + 128 (VENDOR), excepto Herbalism (sin vendor, ver nota abajo).
	(@C_TEMPLATE + 20, 0, 0, 0, 0, 0, 'Alchemy Trainer', 'Master Alchemy Trainer', NULL, 0, 63, 63, 0, 1818, 211, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 8, 256, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 21, 0, 0, 0, 0, 0, 'Blacksmithing Trainer', NULL, NULL, 0, 54, 54, 0, 120, 209, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.3, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 22, 0, 0, 0, 0, 0, 'Engineering Trainer', NULL, NULL, 0, 53, 53, 0, 474, 211, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.3, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 23, 0, 0, 0, 0, 0, 'Tailoring Trainer', NULL, NULL, 0, 34, 34, 0, 120, 209, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 24, 0, 0, 0, 0, 0, 'Leatherworking Trainer', 'Master Leatherworking Trainer', NULL, 0, 63, 63, 0, 1818, 209, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 1, 33024, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1.05, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 25, 0, 0, 0, 0, 0, 'Skinning Trainer', 'Master Skinning Trainer', NULL, 0, 60, 65, 1, 1818, 209, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 1, 33024, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1.05, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 26, 0, 0, 0, 0, 0, 'Mining Trainer', NULL, NULL, 0, 40, 40, 0, 474, 210, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.15, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 27, 0, 0, 0, 0, 0, 'Herbalism Trainer', NULL, NULL, 0, 44, 44, 0, 120, 80, 1, 1.14286, 1, 1, 18, 0, 0, 1, 1500, 2000, 1, 1, 1, 0, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.2, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 28, 0, 0, 0, 0, 0, 'Enchanting Trainer', 'Master Enchanting Trainer', 'Trainer', 0, 60, 60, 0, 1737, 209, 1, 1.14286, 1, 1, 20, 0, 0, 1, 1500, 2000, 1, 1, 2, 512, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 29, 0, 0, 0, 0, 0, 'Enchanting Trainer', 'Master Enchanting Trainer', 'Trainer', 0, 60, 60, 0, 1729, 209, 1, 1.14286, 1, 1, 20, 0, 0, 1, 1500, 2000, 1, 1, 2, 4608, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 30, 0, 0, 0, 0, 0, 'Jewelcrafting Trainer', 'Master Jewelcrafting Trainer', NULL, 0, 60, 60, 0, 1737, 209, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 2, 512, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 31, 0, 0, 0, 0, 0, 'Jewelcrafting Trainer', 'Master Jewelcrafting Trainer', NULL, 0, 60, 60, 0, 1729, 209, 1, 1.14286, 1, 1, 20, 0, 0, 1, 1500, 2000, 1, 1, 8, 512, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 32, 0, 0, 0, 0, 0, 'Inscription Trainer', 'Master Inscription Trainer', NULL, 0, 60, 60, 0, 0, 208, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 8, 32768, 2048, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 33, 0, 0, 0, 0, 0, 'Inscription Trainer', 'Master Inscription Trainer', NULL, 0, 60, 60, 0, 0, 208, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 8, 0, 2048, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 34, 0, 0, 0, 0, 0, 'First Aid Trainer', 'Physician', NULL, 0, 65, 65, 0, 1818, 209, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 1, 33024, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 35, 0, 0, 0, 0, 0, 'Fishing Trainer', NULL, NULL, 0, 43, 43, 0, 120, 209, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.2, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 36, 0, 0, 0, 0, 0, 'Cooking Trainer', NULL, NULL, 0, 65, 65, 0, 120, 209, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE `CreatureID` BETWEEN @C_TEMPLATE + 10 AND @C_TEMPLATE + 36;

INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
	(@C_TEMPLATE + 10, 0, 25458, 1, 1, 0),
	(@C_TEMPLATE + 11, 0, 24029, 1, 1, 0),
	(@C_TEMPLATE + 12, 0, 24030, 1, 1, 0),
	(@C_TEMPLATE + 13, 0, 24031, 1, 1, 0),
	(@C_TEMPLATE + 14, 0, 24032, 1, 1, 0),
	(@C_TEMPLATE + 15, 0, 24033, 1, 1, 0),
	(@C_TEMPLATE + 16, 0, 23777, 1, 1, 0),
	(@C_TEMPLATE + 17, 0, 24034, 1, 1, 0),
	(@C_TEMPLATE + 18, 0, 24035, 1, 1, 0),
	(@C_TEMPLATE + 19, 0, 24036, 1, 1, 0),
	(@C_TEMPLATE + 20, 0, 17867, 1, 1, 0),
	(@C_TEMPLATE + 21, 0, 7161, 1, 1, 0),
	(@C_TEMPLATE + 22, 0, 8010, 1, 1, 0),
	(@C_TEMPLATE + 23, 0, 7176, 1, 1, 0),
	(@C_TEMPLATE + 24, 0, 18630, 1, 1, 0),
	(@C_TEMPLATE + 25, 0, 18623, 1, 1, 0),
	(@C_TEMPLATE + 26, 0, 7341, 1, 1, 0),
	(@C_TEMPLATE + 27, 0, 4488, 1, 1, 0),
	(@C_TEMPLATE + 28, 0, 18179, 1, 1, 0),
	(@C_TEMPLATE + 29, 0, 18180, 1, 1, 0),
	(@C_TEMPLATE + 30, 0, 18173, 1, 1, 0),
	(@C_TEMPLATE + 31, 0, 18172, 1, 1, 0),
	(@C_TEMPLATE + 32, 0, 27284, 1, 1, 0),
	(@C_TEMPLATE + 33, 0, 27285, 1, 1, 0),
	(@C_TEMPLATE + 34, 0, 18625, 1, 1, 0),
	(@C_TEMPLATE + 35, 0, 7172, 1, 1, 0),
	(@C_TEMPLATE + 36, 0, 18627, 1, 1, 0);

-- Se reutilizan los TrainerId reales (contenido de solo lectura: lista de spells a enseñar).
-- No se modifica `trainer`/`trainer_spell`, solo se apunta un nuevo creature_template hacia ellos.
DELETE FROM `creature_default_trainer` WHERE `CreatureId` BETWEEN @C_TEMPLATE + 10 AND @C_TEMPLATE + 36;

INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
	(@C_TEMPLATE + 10, 13),
	(@C_TEMPLATE + 11, 33),
	(@C_TEMPLATE + 12, 7),
	(@C_TEMPLATE + 13, 16),
	(@C_TEMPLATE + 14, 5),
	(@C_TEMPLATE + 15, 11),
	(@C_TEMPLATE + 16, 9),
	(@C_TEMPLATE + 17, 14),
	(@C_TEMPLATE + 18, 31),
	(@C_TEMPLATE + 19, 1),
	(@C_TEMPLATE + 20, 66),
	(@C_TEMPLATE + 21, 60),
	(@C_TEMPLATE + 22, 92),
	(@C_TEMPLATE + 23, 74),
	(@C_TEMPLATE + 24, 62),
	(@C_TEMPLATE + 25, 101),
	(@C_TEMPLATE + 26, 80),
	(@C_TEMPLATE + 27, 69),
	(@C_TEMPLATE + 28, 95),
	(@C_TEMPLATE + 29, 95),
	(@C_TEMPLATE + 30, 112),
	(@C_TEMPLATE + 31, 112),
	(@C_TEMPLATE + 32, 120),
	(@C_TEMPLATE + 33, 120),
	(@C_TEMPLATE + 34, 83),
	(@C_TEMPLATE + 35, 98),
	(@C_TEMPLATE + 36, 77);

-- Vendor: solo los 4 que ya venden en el juego real (Enchanting/Jewelcrafting), copiado literal.
-- Para el resto de profesiones, ver los items básicos añadidos más abajo.
DELETE FROM `npc_vendor` WHERE `entry` IN (@C_TEMPLATE + 28, @C_TEMPLATE + 29, @C_TEMPLATE + 30, @C_TEMPLATE + 31);

INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
	(@C_TEMPLATE + 28, 0, 4470, 0, 0, 0),
	(@C_TEMPLATE + 28, 0, 6217, 0, 0, 0),
	(@C_TEMPLATE + 28, 0, 10938, 1, 7200, 0),
	(@C_TEMPLATE + 28, 0, 10940, 3, 7200, 0),
	(@C_TEMPLATE + 28, 0, 11291, 0, 0, 0),
	(@C_TEMPLATE + 28, 0, 20752, 0, 0, 0),
	(@C_TEMPLATE + 28, 0, 20753, 0, 0, 0),
	(@C_TEMPLATE + 28, 0, 20758, 0, 0, 0),
	(@C_TEMPLATE + 28, 0, 22307, 0, 0, 0),
	(@C_TEMPLATE + 29, 0, 4470, 0, 0, 0),
	(@C_TEMPLATE + 29, 0, 6217, 0, 0, 0),
	(@C_TEMPLATE + 29, 0, 10938, 1, 7200, 0),
	(@C_TEMPLATE + 29, 0, 10940, 4, 7200, 0),
	(@C_TEMPLATE + 29, 0, 11291, 0, 0, 0),
	(@C_TEMPLATE + 29, 0, 20752, 0, 0, 0),
	(@C_TEMPLATE + 29, 0, 20753, 0, 0, 0),
	(@C_TEMPLATE + 29, 0, 20758, 0, 0, 0),
	(@C_TEMPLATE + 29, 0, 22307, 0, 0, 0),
	(@C_TEMPLATE + 30, 0, 20815, 1, 800, 200),
	(@C_TEMPLATE + 30, 0, 20824, 1, 25000, 6250),
	(@C_TEMPLATE + 31, 0, 20815, 1, 800, 200),
	(@C_TEMPLATE + 31, 0, 20824, 1, 25000, 6250);

-- Vendor: articulos basicos para las 12 profesiones sin datos reales que copiar (Herbalism excluida,
-- es pura recoleccion sin item propio en el juego). Para anadir/cambiar articulos de cualquiera de
-- estos vendors: editar aqui por el entry correspondiente, nunca tocar el npc_vendor de un NPC real.
DELETE FROM `npc_vendor` WHERE `entry` IN (@C_TEMPLATE + 20, @C_TEMPLATE + 21, @C_TEMPLATE + 22, @C_TEMPLATE + 23, @C_TEMPLATE + 24, @C_TEMPLATE + 25, @C_TEMPLATE + 26, @C_TEMPLATE + 32, @C_TEMPLATE + 33, @C_TEMPLATE + 34, @C_TEMPLATE + 35, @C_TEMPLATE + 36);

INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
	(@C_TEMPLATE + 20, 0, 3371, 0, 0, 0),   -- Alchemy: Empty Vial
	(@C_TEMPLATE + 21, 0, 5956, 0, 0, 0),   -- Blacksmithing: Blacksmith Hammer
	(@C_TEMPLATE + 21, 0, 2880, 0, 0, 0),   -- Blacksmithing: Weak Flux
	(@C_TEMPLATE + 22, 0, 4359, 0, 0, 0),   -- Engineering: Handful of Copper Bolts
	(@C_TEMPLATE + 23, 0, 2996, 0, 0, 0),   -- Tailoring: Bolt of Linen Cloth
	(@C_TEMPLATE + 24, 0, 2320, 0, 0, 0),   -- Leatherworking: Coarse Thread
	(@C_TEMPLATE + 25, 0, 7005, 0, 0, 0),   -- Skinning: Skinning Knife
	(@C_TEMPLATE + 26, 0, 2901, 0, 0, 0),   -- Mining: Mining Pick
	(@C_TEMPLATE + 32, 0, 39505, 0, 0, 0),  -- Inscription (Alliance): Virtuoso Inking Set
	(@C_TEMPLATE + 33, 0, 39505, 0, 0, 0),  -- Inscription (Horde): Virtuoso Inking Set
	(@C_TEMPLATE + 34, 0, 1251, 0, 0, 0),   -- First Aid: Linen Bandage
	(@C_TEMPLATE + 35, 0, 6256, 0, 0, 0),   -- Fishing: Fishing Pole
	(@C_TEMPLATE + 35, 0, 6529, 0, 0, 0),   -- Fishing: Shiny Bauble
	(@C_TEMPLATE + 36, 0, 2678, 0, 0, 0);   -- Cooking: Mild Spices

-- Quest: solo la primera mision de cada cadena de clase con cadena real y jugable (Druid, Shaman,
-- Paladin, Warlock). El jugador la inicia aqui y sigue la cadena en el mundo con normalidad.
-- No otorgan ningun spell (RewardSpell=0 en las 4): son contenido narrativo, no un desbloqueo.
DELETE FROM `creature_queststarter` WHERE `id` IN (@C_TEMPLATE + 11, @C_TEMPLATE + 14, @C_TEMPLATE + 17, @C_TEMPLATE + 18);

INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
	-- Druid: Bear Form (10), Aquatic Form (16), Lessons Anew (14, mismo questgiver que Bear Form)
	(@C_TEMPLATE + 11, 5921), (@C_TEMPLATE + 11, 5922), (@C_TEMPLATE + 11, 30), (@C_TEMPLATE + 11, 31),
	(@C_TEMPLATE + 11, 6121), (@C_TEMPLATE + 11, 6126),
	-- Paladin: Redemption (12)
	(@C_TEMPLATE + 14, 9598), (@C_TEMPLATE + 14, 9600),
	-- Shaman: Call of Earth (4, Horda + Draenei), Call of Fire (10), Call of Water (20), Call of Air (30, Horda + Draenei)
	(@C_TEMPLATE + 17, 1516), (@C_TEMPLATE + 17, 1519), (@C_TEMPLATE + 17, 9449),
	(@C_TEMPLATE + 17, 1524),
	(@C_TEMPLATE + 17, 1534), (@C_TEMPLATE + 17, 1535), (@C_TEMPLATE + 17, 1536),
	(@C_TEMPLATE + 17, 1531), (@C_TEMPLATE + 17, 1532), (@C_TEMPLATE + 17, 9547),
	-- Warlock: Imp (1), Voidwalker (10), Succubus (20), Felhunter (30), Infernal (50), Doomguard (60)
	(@C_TEMPLATE + 18, 792), (@C_TEMPLATE + 18, 1485),
	(@C_TEMPLATE + 18, 1471), (@C_TEMPLATE + 18, 1504),
	(@C_TEMPLATE + 18, 1472), (@C_TEMPLATE + 18, 1507),
	(@C_TEMPLATE + 18, 1758),
	(@C_TEMPLATE + 18, 7601),
	(@C_TEMPLATE + 18, 7581);
