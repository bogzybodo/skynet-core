SET
@Entry = 190011,
@Name = "Thaumaturge Vashreen";

INSERT INTO `creature_template` (`entry`, `modelid1`, `modelid2`, `modelid3`, `modelid4` , `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(@Entry, 20988, 0, 0, 0 , @Name, "Arcane Reforger", NULL, 0, 80, 80, 2, 35, 1, 1, 0, 500, 500, 0, 350, 1, 2000, 0, 1, 0, 0, 0, 0, 7, 138936390, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 0, 0, 1, 0, 0, 'REFORGER_NPC');
