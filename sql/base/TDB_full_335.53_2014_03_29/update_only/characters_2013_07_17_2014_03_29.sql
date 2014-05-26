-- TrinityCore\sql\updates\characters\2013_07_19_00_characters_corpse.sql 
ALTER TABLE `corpse` CHANGE `phaseMask` `phaseMask` int(10) unsigned NOT NULL DEFAULT '1';
 
-- TrinityCore\sql\updates\characters\2014_01_12_00_characters_guild.sql 
ALTER TABLE `guild` CHANGE `info` `info` VARCHAR(500) NOT NULL DEFAULT '';
 
