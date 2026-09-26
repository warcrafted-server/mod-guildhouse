-- Class trainers y profession trainers/vendors propios del módulo (entries 500040-500066).
-- Clonados de los NPC reales de ciudad, pero como creature_template independiente: nunca
-- modificar el creature_template/npc_vendor/creature_queststarter de los entries reales
-- (26327, 2836, 18773, etc.), afectaría a esos NPC en todo el mundo, no solo en la guild house.
SET @C_TEMPLATE = 500030;

DELETE FROM `creature_template` WHERE `entry` BETWEEN @C_TEMPLATE + 10 AND @C_TEMPLATE + 36;

INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
-- Class trainers (offset 10-19). npcflag: 48=GOSSIP+TRAINER+TRAINER_CLASS base; +2 QUESTGIVER donde se añade misión de clase.
	(@C_TEMPLATE + 10, 0, 0, 0, 0, 0, 'Morvain Fauceniebla', 'Instructor de la Orden de la Muerte', NULL, 0, 80, 80, 0, 2050, 49, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 11, 0, 0, 0, 0, 0, 'Sylas Corteñina', 'Guardián del Círculo Silvano', NULL, 0, 70, 70, 0, 35, 50, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 2, 768, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 12, 0, 0, 0, 0, 0, 'Kael Rastrosendas', 'Maestro Rastreador', NULL, 0, 70, 70, 0, 35, 48, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 1, 768, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 13, 0, 0, 0, 0, 0, 'Aldric Vientarcano', 'Erudito de las Artes Arcanas', NULL, 0, 70, 70, 0, 35, 48, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 8, 768, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 14, 0, 0, 0, 0, 0, 'Seraphine Auroraluz', 'Guardiana de la Luz Sagrada', NULL, 0, 70, 70, 0, 35, 50, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 2, 768, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 15, 0, 0, 0, 0, 0, 'Elandra Susurrodivino', 'Confidente de la Sombra y la Luz', NULL, 0, 70, 70, 0, 35, 48, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 8, 768, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 16, 0, 0, 0, 0, 0, 'Vex Filocurvo', 'Maestro de las Sombras', NULL, 0, 70, 70, 0, 35, 48, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 1, 768, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 17, 0, 0, 0, 0, 0, 'Kanoa Voztierra', 'Vidente de los Elementos', NULL, 0, 70, 70, 0, 35, 50, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 2, 768, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 18, 0, 0, 0, 0, 0, 'Malachar Pactoscuro', 'Invocador de las Tinieblas', NULL, 0, 70, 70, 0, 35, 50, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 8, 768, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 19, 0, 0, 0, 0, 0, 'Borik Puñoférreo', 'Veterano de Mil Batallas', NULL, 0, 70, 70, 0, 35, 48, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 1, 768, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
-- Profession trainers/vendors (offset 20-36). npcflag real + 128 (VENDOR).
	(@C_TEMPLATE + 20, 0, 0, 0, 0, 0, 'Elowen Frascoburbuja', 'Maestra de Pociones y Elixires', NULL, 0, 63, 63, 0, 1818, 211, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 8, 256, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 21, 0, 0, 0, 0, 0, 'Hobart Yunquefuerte', 'Forjador de Metales', NULL, 0, 54, 54, 0, 120, 209, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.3, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 22, 0, 0, 0, 0, 0, 'Zizzle Tornillorroto', 'Inventora de Artilugios', NULL, 0, 53, 53, 0, 474, 211, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.3, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 23, 0, 0, 0, 0, 0, 'Marisol Hilorretorcido', 'Tejedora de Telas Finas', NULL, 0, 34, 34, 0, 120, 209, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 24, 0, 0, 0, 0, 0, 'Draven Curtepieles', 'Curtidor de Pieles y Cueros', NULL, 0, 63, 63, 0, 1818, 209, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 1, 33024, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1.05, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 25, 0, 0, 0, 0, 0, 'Ysolde Cuchillafina', 'Experta en Desuello', NULL, 0, 60, 65, 1, 1818, 209, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 1, 33024, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1.05, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 26, 0, 0, 0, 0, 0, 'Grondar Picafirme', 'Buscador de Vetas y Minerales', NULL, 0, 40, 40, 0, 474, 210, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.15, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 27, 0, 0, 0, 0, 0, 'Fennwick Raízverde', 'Recolector de Hierbas', NULL, 0, 44, 44, 0, 120, 208, 1, 1.14286, 1, 1, 18, 0, 0, 1, 1500, 2000, 1, 1, 1, 0, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.2, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 28, 0, 0, 0, 0, 0, 'Alric Lucearcana', 'Tejedor de Encantamientos', NULL, 0, 60, 60, 0, 1737, 209, 1, 1.14286, 1, 1, 20, 0, 0, 1, 1500, 2000, 1, 1, 2, 512, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 29, 0, 0, 0, 0, 0, 'Nazira Lucearcana', 'Tejedora de Encantamientos', NULL, 0, 60, 60, 0, 1729, 209, 1, 1.14286, 1, 1, 20, 0, 0, 1, 1500, 2000, 1, 1, 2, 4608, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 30, 0, 0, 0, 0, 0, 'Perrin Facetagema', 'Tallador de Gemas', NULL, 0, 60, 60, 0, 1737, 209, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 2, 512, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 31, 0, 0, 0, 0, 0, 'Talyra Facetagema', 'Talladora de Gemas', NULL, 0, 60, 60, 0, 1729, 209, 1, 1.14286, 1, 1, 20, 0, 0, 1, 1500, 2000, 1, 1, 8, 512, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 32, 0, 0, 0, 0, 0, 'Corvin Tintapluma', 'Maestro de Glifos y Pergaminos', NULL, 0, 60, 60, 0, 0, 208, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 8, 32768, 2048, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 33, 0, 0, 0, 0, 0, 'Sable Tintapluma', 'Maestra de Glifos y Pergaminos', NULL, 0, 60, 60, 0, 0, 208, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 8, 0, 2048, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 34, 0, 0, 0, 0, 0, 'Brenna Vendajesano', 'Sanadora de Campaña', NULL, 0, 65, 65, 0, 1818, 209, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 1, 33024, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 35, 0, 0, 0, 0, 0, 'Toby Anzuelosuerte', 'Pescador de Aguas Tranquilas', NULL, 0, 43, 43, 0, 120, 209, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.2, 1, 1, 1, 0, 0, 1, 0, '', 12340),
	(@C_TEMPLATE + 36, 0, 0, 0, 0, 0, 'Ginnie Calderoardiente', 'Cocinera de la Casa', NULL, 0, 65, 65, 0, 120, 209, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, '', 12340);

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
	(@C_TEMPLATE + 28, 0, 4470, 0, 0, 0),          -- Madera simple
	(@C_TEMPLATE + 28, 0, 6217, 0, 0, 0),          -- Vara de cobre
	(@C_TEMPLATE + 28, 0, 10938, 2, 3600, 0),      -- Esencia mágica inferior
	(@C_TEMPLATE + 28, 0, 10940, 4, 3600, 0),      -- Polvo extraño
	(@C_TEMPLATE + 28, 0, 11291, 0, 0, 0),         -- Madera de estrella
	(@C_TEMPLATE + 28, 0, 20752, 0, 0, 0),         -- Fórmula: Aceite mágico menor
	(@C_TEMPLATE + 28, 0, 20753, 0, 0, 0),         -- Fórmula: Aceite de hechicero inferior
	(@C_TEMPLATE + 28, 0, 20758, 0, 0, 0),         -- Fórmula: Aceite de hechicero menor
	(@C_TEMPLATE + 28, 0, 22307, 0, 0, 0),         -- Patrón: Bolsa encantada de tela arcana
	(@C_TEMPLATE + 28, 0, 6338, 1, 604800, 0),     -- Vara de plata
	(@C_TEMPLATE + 28, 0, 11128, 1, 604800, 0),    -- Vara dorada
	(@C_TEMPLATE + 28, 0, 11144, 1, 604800, 0),    -- Vara de veraplata
	(@C_TEMPLATE + 28, 0, 25844, 1, 604800, 0),    -- Vara de adamantita
	(@C_TEMPLATE + 28, 0, 16206, 1, 604800, 0),    -- Vara de arcanita
	(@C_TEMPLATE + 28, 0, 41741, 1, 604800, 0),    -- Vara de cobalto
	(@C_TEMPLATE + 28, 0, 25843, 1, 604800, 0),    -- Vara de hierro vil
	(@C_TEMPLATE + 28, 0, 25845, 1, 604800, 0),    -- Vara de eternio
	(@C_TEMPLATE + 28, 0, 41745, 1, 604800, 0),    -- Vara de titanio
	(@C_TEMPLATE + 29, 0, 4470, 0, 0, 0),          -- Madera simple
	(@C_TEMPLATE + 29, 0, 6217, 0, 0, 0),          -- Vara de cobre
	(@C_TEMPLATE + 29, 0, 10938, 2, 3600, 0),      -- Esencia mágica inferior
	(@C_TEMPLATE + 29, 0, 10940, 4, 3600, 0),      -- Polvo extraño
	(@C_TEMPLATE + 29, 0, 11291, 0, 0, 0),         -- Madera de estrella
	(@C_TEMPLATE + 29, 0, 20752, 0, 0, 0),         -- Fórmula: Aceite mágico menor
	(@C_TEMPLATE + 29, 0, 20753, 0, 0, 0),         -- Fórmula: Aceite de hechicero inferior
	(@C_TEMPLATE + 29, 0, 20758, 0, 0, 0),         -- Fórmula: Aceite de hechicero menor
	(@C_TEMPLATE + 29, 0, 22307, 0, 0, 0),         -- Patrón: Bolsa encantada de tela arcana
	(@C_TEMPLATE + 29, 0, 6338, 1, 604800, 0),     -- Vara de plata
	(@C_TEMPLATE + 29, 0, 11128, 1, 604800, 0),    -- Vara dorada
	(@C_TEMPLATE + 29, 0, 11144, 1, 604800, 0),    -- Vara de veraplata
	(@C_TEMPLATE + 29, 0, 25844, 1, 604800, 0),    -- Vara de adamantita
	(@C_TEMPLATE + 29, 0, 16206, 1, 604800, 0),    -- Vara de arcanita
	(@C_TEMPLATE + 29, 0, 41741, 1, 604800, 0),    -- Vara de cobalto
	(@C_TEMPLATE + 29, 0, 25843, 1, 604800, 0),    -- Vara de hierro vil
	(@C_TEMPLATE + 29, 0, 25845, 1, 604800, 0),    -- Vara de eternio
	(@C_TEMPLATE + 29, 0, 41745, 1, 604800, 0),    -- Vara de titanio
	(@C_TEMPLATE + 30, 0, 20815, 1, 800, 200),     -- Herramientas de joyero
	(@C_TEMPLATE + 30, 0, 20824, 1, 25000, 6250),  -- Pulidora sencilla
	(@C_TEMPLATE + 31, 0, 20815, 1, 800, 200),     -- Herramientas de joyero
	(@C_TEMPLATE + 31, 0, 20824, 1, 25000, 6250);  -- Pulidora sencilla

-- Vendor: articulos basicos para el resto de profesiones. Para anadir/cambiar articulos de
-- cualquiera de estos vendors: editar aqui por el entry correspondiente, nunca tocar el
-- npc_vendor de un NPC real.
DELETE FROM `npc_vendor` WHERE `entry` IN (@C_TEMPLATE + 20, @C_TEMPLATE + 21, @C_TEMPLATE + 22, @C_TEMPLATE + 23, @C_TEMPLATE + 24, @C_TEMPLATE + 25, @C_TEMPLATE + 26, @C_TEMPLATE + 27, @C_TEMPLATE + 32, @C_TEMPLATE + 33, @C_TEMPLATE + 34, @C_TEMPLATE + 35, @C_TEMPLATE + 36);

INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
	-- Alquimia: viales + pociones básicas de sanación/maná (a petición expresa, aunque en el
	-- juego real son objetos de Alquimia y no de Primeros Auxilios)
	(@C_TEMPLATE + 20, 0, 3371, 0, 0, 0),     -- Vial vacío
	(@C_TEMPLATE + 20, 0, 3372, 0, 0, 0),     -- Vial emplomado
	(@C_TEMPLATE + 20, 0, 8925, 0, 0, 0),     -- Vial de cristal
	(@C_TEMPLATE + 20, 0, 18256, 0, 0, 0),    -- Vial imbuido
	(@C_TEMPLATE + 20, 0, 40411, 0, 0, 0),    -- Vial encantado
	-- Herrería
	(@C_TEMPLATE + 21, 0, 5956, 0, 0, 0),     -- Martillo de herrero
	(@C_TEMPLATE + 21, 0, 2880, 0, 0, 0),     -- Flujo débil
	(@C_TEMPLATE + 21, 0, 3466, 0, 0, 0),     -- Flujo fuerte
	(@C_TEMPLATE + 21, 0, 18567, 0, 0, 0),    -- Flujo elemental
	(@C_TEMPLATE + 21, 0, 2901, 0, 0, 0),     -- Pico de minero
	(@C_TEMPLATE + 21, 0, 3857, 4, 3600, 0),  -- Carbón
	(@C_TEMPLATE + 21, 0, 3470, 0, 0, 0),     -- Piedra de amolar burda
	(@C_TEMPLATE + 21, 0, 3478, 0, 0, 0),     -- Piedra de amolar tosca
	(@C_TEMPLATE + 21, 0, 3486, 0, 0, 0),     -- Piedra de amolar pesada
	(@C_TEMPLATE + 21, 0, 7966, 0, 0, 0),     -- Piedra de amolar sólida
	(@C_TEMPLATE + 21, 0, 12644, 0, 0, 0),    -- Piedra de amolar densa
	-- Ingeniería
	(@C_TEMPLATE + 22, 0, 4359, 0, 0, 0),     -- Puñado de pernos de cobre
	(@C_TEMPLATE + 22, 0, 2880, 0, 0, 0),     -- Flujo débil
	(@C_TEMPLATE + 22, 0, 4364, 4, 3600, 0),  -- Pólvora burda
	(@C_TEMPLATE + 22, 0, 4361, 2, 3600, 0),  -- Tubo de cobre
	(@C_TEMPLATE + 22, 0, 4363, 2, 3600, 0),  -- Modulador de cobre
	(@C_TEMPLATE + 22, 0, 4371, 2, 3600, 0),  -- Tubo de bronce
	(@C_TEMPLATE + 22, 0, 4382, 1, 3600, 0),  -- Marco de bronce
	(@C_TEMPLATE + 22, 0, 4389, 1, 3600, 0),  -- Girocronátomo
	(@C_TEMPLATE + 22, 0, 4399, 0, 0, 0),     -- Pila de madera
	(@C_TEMPLATE + 22, 0, 4400, 0, 0, 0),     -- Surtido pesado
	(@C_TEMPLATE + 22, 0, 4404, 3, 3600, 0),  -- Contacto de plata
	(@C_TEMPLATE + 22, 0, 40533, 0, 0, 0),    -- Culata de nogal
	(@C_TEMPLATE + 22, 0, 5956, 0, 0, 0),     -- Martillo de herrero
	-- Sastrería
	(@C_TEMPLATE + 23, 0, 2996, 0, 0, 0),     -- Rollo de tela de lino
	(@C_TEMPLATE + 23, 0, 2320, 0, 0, 0),     -- Hilo burdo
	(@C_TEMPLATE + 23, 0, 2321, 0, 0, 0),     -- Hilo refinado
	(@C_TEMPLATE + 23, 0, 4291, 0, 0, 0),     -- Hilo de seda
	(@C_TEMPLATE + 23, 0, 8343, 0, 0, 0),     -- Hilo de seda grueso
	(@C_TEMPLATE + 23, 0, 14341, 0, 0, 0),    -- Hilo rúnico
	(@C_TEMPLATE + 23, 0, 38426, 0, 0, 0),    -- Hilo de eternio
	(@C_TEMPLATE + 23, 0, 2324, 0, 0, 0),     -- Lejía
	(@C_TEMPLATE + 23, 0, 2325, 0, 0, 0),     -- Tinte negro
	(@C_TEMPLATE + 23, 0, 2604, 0, 0, 0),     -- Tinte rojo
	(@C_TEMPLATE + 23, 0, 2605, 0, 0, 0),     -- Tinte verde
	(@C_TEMPLATE + 23, 0, 4340, 0, 0, 0),     -- Tinte gris
	(@C_TEMPLATE + 23, 0, 4341, 0, 0, 0),     -- Tinte amarillo
	(@C_TEMPLATE + 23, 0, 4342, 0, 0, 0),     -- Tinte morado
	(@C_TEMPLATE + 23, 0, 6260, 0, 0, 0),     -- Tinte azul
	(@C_TEMPLATE + 23, 0, 6261, 0, 0, 0),     -- Tinte naranja
	(@C_TEMPLATE + 23, 0, 10290, 0, 0, 0),    -- Tinte rosa
	-- Peletería: mismos hilos/tintes que Sastrería + Sal
	(@C_TEMPLATE + 24, 0, 2320, 0, 0, 0),     -- Hilo burdo
	(@C_TEMPLATE + 24, 0, 2321, 0, 0, 0),     -- Hilo refinado
	(@C_TEMPLATE + 24, 0, 4291, 0, 0, 0),     -- Hilo de seda
	(@C_TEMPLATE + 24, 0, 8343, 0, 0, 0),     -- Hilo de seda grueso
	(@C_TEMPLATE + 24, 0, 14341, 0, 0, 0),    -- Hilo rúnico
	(@C_TEMPLATE + 24, 0, 38426, 0, 0, 0),    -- Hilo de eternio
	(@C_TEMPLATE + 24, 0, 2324, 0, 0, 0),     -- Lejía
	(@C_TEMPLATE + 24, 0, 2325, 0, 0, 0),     -- Tinte negro
	(@C_TEMPLATE + 24, 0, 2604, 0, 0, 0),     -- Tinte rojo
	(@C_TEMPLATE + 24, 0, 2605, 0, 0, 0),     -- Tinte verde
	(@C_TEMPLATE + 24, 0, 4340, 0, 0, 0),     -- Tinte gris
	(@C_TEMPLATE + 24, 0, 4341, 0, 0, 0),     -- Tinte amarillo
	(@C_TEMPLATE + 24, 0, 4342, 0, 0, 0),     -- Tinte morado
	(@C_TEMPLATE + 24, 0, 6260, 0, 0, 0),     -- Tinte azul
	(@C_TEMPLATE + 24, 0, 6261, 0, 0, 0),     -- Tinte naranja
	(@C_TEMPLATE + 24, 0, 10290, 0, 0, 0),    -- Tinte rosa
	(@C_TEMPLATE + 24, 0, 4289, 0, 0, 0),     -- Sal
	-- Desuello
	(@C_TEMPLATE + 25, 0, 7005, 0, 0, 0),     -- Cuchillo para desollar
	(@C_TEMPLATE + 25, 0, 2318, 4, 3600, 0),  -- Cuero ligero
	(@C_TEMPLATE + 25, 0, 2319, 2, 3600, 0),  -- Cuero medio
	-- Minería
	(@C_TEMPLATE + 26, 0, 2901, 0, 0, 0),     -- Pico de minero
	(@C_TEMPLATE + 26, 0, 2880, 0, 0, 0),     -- Flujo débil
	(@C_TEMPLATE + 26, 0, 18567, 0, 0, 0),    -- Flujo elemental
	(@C_TEMPLATE + 26, 0, 3857, 4, 3600, 0),  -- Carbón
	(@C_TEMPLATE + 26, 0, 20824, 1, 25000, 6250), -- Pulidora sencilla
	-- Herboristería
	(@C_TEMPLATE + 27, 0, 2447, 4, 3600, 0),  -- Flor de paz
	(@C_TEMPLATE + 27, 0, 765, 4, 3600, 0),   -- Hojaplata
	-- Inscripción (Alianza / Horda)
	(@C_TEMPLATE + 32, 0, 39505, 0, 0, 0),    -- Juego de caligrafía de virtuoso
	(@C_TEMPLATE + 32, 0, 10648, 0, 0, 0),    -- Papiro común
	(@C_TEMPLATE + 32, 0, 39354, 0, 0, 0),    -- Papiro ligero
	(@C_TEMPLATE + 32, 0, 39501, 0, 0, 0),    -- Papiro pesado
	(@C_TEMPLATE + 32, 0, 39502, 0, 0, 0),    -- Papiro resistente
	(@C_TEMPLATE + 33, 0, 39505, 0, 0, 0),    -- Juego de caligrafía de virtuoso
	(@C_TEMPLATE + 33, 0, 10648, 0, 0, 0),    -- Papiro común
	(@C_TEMPLATE + 33, 0, 39354, 0, 0, 0),    -- Papiro ligero
	(@C_TEMPLATE + 33, 0, 39501, 0, 0, 0),    -- Papiro pesado
	(@C_TEMPLATE + 33, 0, 39502, 0, 0, 0),    -- Papiro resistente
	-- Primeros auxilios: venda + pociones de sanación/maná básicas (a petición expresa)
	(@C_TEMPLATE + 34, 0, 1251, 0, 0, 0),     -- Venda de lino
	(@C_TEMPLATE + 34, 0, 118, 4, 3600, 0),   -- Poción de sanación menor
	(@C_TEMPLATE + 34, 0, 2455, 4, 3600, 0),  -- Poción de maná menor
	(@C_TEMPLATE + 34, 0, 858, 2, 3600, 0),   -- Poción de sanación inferior
	(@C_TEMPLATE + 34, 0, 3385, 2, 3600, 0),  -- Poción de maná inferior
	-- Pesca
	(@C_TEMPLATE + 35, 0, 6256, 0, 0, 0),     -- Caña de pescar
	(@C_TEMPLATE + 35, 0, 6529, 0, 0, 0),     -- Adorno lustroso
	(@C_TEMPLATE + 35, 0, 6365, 1, 86400, 0), -- Caña de pescar fuerte
	(@C_TEMPLATE + 35, 0, 6530, 0, 0, 0),     -- Reptadores nocturnos
	(@C_TEMPLATE + 35, 0, 6532, 0, 0, 0),     -- Adornos brillantes
	(@C_TEMPLATE + 35, 0, 6533, 2, 86400, 0), -- Atrapapeces acuadinámico
	-- Cocina
	(@C_TEMPLATE + 36, 0, 2678, 0, 0, 0);     -- Especias suaves

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
