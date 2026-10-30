-- phpMyAdmin SQL Dump
-- version 5.2.2deb1+deb13u1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 15-08-2026 a las 12:18:23
-- Versión del servidor: 8.4.11
-- Versión de PHP: 8.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `acore_world`
--

--
-- Volcado de datos para la tabla `creature`
--

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(15000115, 500030, 0, 1519, 1519, 1, 1, 0, -8847.08, 628.751, 94.7919, 0.345714, 300, 0, 0, 1220, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(15000155, 500030, 1, 0, 0, 1, 1, 0, 1614.7, -4401.92, 11.2234, 2.17395, 300, 0, 0, 1220, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(15000156, 500030, 0, 0, 0, 1, 1, 0, -4913.1, -975.704, 501.452, 2.28187, 300, 0, 0, 1220, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(15000157, 500030, 1, 0, 0, 1, 1, 0, 9949.79, 2495.1, 1317.37, 4.91103, 300, 0, 0, 1220, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(15000158, 500030, 530, 0, 0, 1, 1, 0, -3895.71, -11630.8, -137.893, 1.48833, 300, 0, 0, 1220, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(15000159, 500030, 0, 0, 0, 1, 1, 0, 1587.07, 245.663, -52.1523, 3.24622, 300, 0, 0, 1220, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(15000160, 500030, 1, 0, 0, 1, 1, 0, -1272.14, 113.905, 130.393, 2.08507, 300, 0, 0, 1220, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(15000161, 500030, 530, 0, 0, 1, 1, 0, 9514.53, -7308.46, 14.4686, 3.19236, 300, 0, 0, 1220, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(15000162, 500030, 530, 0, 0, 1, 1, 0, -1813.29, 5306.7, -12.428, 1.99722, 300, 0, 0, 1220, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(15000163, 500030, 571, 0, 0, 1, 1, 0, 5720.18, 640.867, 646.262, 5.81362, 300, 0, 0, 1220, 0, 0, 0, 0, 0, '', NULL, 0, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
