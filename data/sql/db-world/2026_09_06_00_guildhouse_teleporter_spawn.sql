-- Posición del NPC teletransportador dentro de la casa de hermandad. El entry 190000 es propio
-- del servidor (no lo define este módulo): la fila queda inerte mientras GuildHouseTeleporterEntry
-- valga 0 en la configuración.
DELETE FROM `guild_house_spawns` WHERE `entry` = 190000;

INSERT INTO `guild_house_spawns` (`entry`, `posX`, `posY`, `posZ`, `orientation`, `comment`) VALUES
(190000, 16217.2, 16268.5, 13.2253, 4.91577, 'Teleporter');
