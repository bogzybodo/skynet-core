-- (73828, 4812, 0, 0, 0, 0, 1101, 2, 1); -- Alliance, 30
-- Wickerman Festival
SET @GO_GUID       := xxxxxx; -- set by TDB team (14)
SET @CREATURE_GUID := xxxxxx; -- set by TDB team (5)

UPDATE `gameobject_template` SET `flags` = 17 WHERE `entry` = 180433;
DELETE FROM gameobject WHERE id IN (180432,180433,180434,180437,180405,180406) AND guid BETWEEN @GO_GUID+00 AND @GO_GUID+13;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
-- Forsaken Banner
(@GO_GUID+00,180432,0,1,1,1749.28,507.611,39.2312,1.49635,0,0,0.680301,0.732933,300,0,1),
(@GO_GUID+01,180432,0,1,1,1712.63,507.05,38.2495,1.58824,0,0,0.713246,0.700914,300,0,1),

-- The Wickerman
(@GO_GUID+02,180433,0,1,1,1734.04,504.05,42.2861,1.4131,0,0,0.649213,0.760607,300,0,0),
-- Bonfire
(@GO_GUID+03,180434,0,1,1,1758.89,513.276,35.8655,1.28897,0,0,0.600788,0.799409,300,0,1),
(@GO_GUID+04,180434,0,1,1,1704.48,518.689,35.4045,1.30704,0,0,0.607984,0.793949,300,0,1),
(@GO_GUID+05,180434,0,1,1,1739.78,473.238,61.6565,1.59371,0,0,0.71516,0.698961,300,0,1),
(@GO_GUID+06,180434,0,1,1,1717.32,472.723,61.6566,1.59371,0,0,0.71516,0.698961,300,0,1),

-- Wickerman Ember
(@GO_GUID+07,180437,0,1,1,1744.62,504.954,40.8518,1.23403,0,0,0.578603,0.81561,300,0,1),
(@GO_GUID+08,180437,0,1,1,1729.13,510.378,40.8719,1.23403,0,0,0.578603,0.81561,300,0,1),
(@GO_GUID+09,180437,0,1,1,1721.77,503.938,41.1381,1.23403,0,0,0.578603,0.81561,300,0,1),
(@GO_GUID+10,180437,0,1,1,1744.96,496.25,41.44,1.24581,0,0,0.583397,0.812187,300,0,1),

-- G_Pumpkin_01
(@GO_GUID+11,180405,0,1,1,1746.07,517.066,38.936,2.83466,0,0,0.988247,0.152864,300,0,1),
(@GO_GUID+12,180405,0,1,1,1728,475.099,63.6779,3.08363,0,0,0.99958,0.0289791,300,0,1),

-- G_Pumpkin_02
(@GO_GUID+13,180406,0,1,1,1719.67,522.979,36.8828,2.93283,0,0,0.994557,0.10419,300,0,1);
DELETE FROM `creature` WHERE `id` IN (15195,15197,15199) AND `guid` BETWEEN @CREATURE_GUID+00 AND @CREATURE_GUID+04;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES

-- Wickerman Guardian
(@CREATURE_GUID+00,15195,0,1,1,0,0,1713.1,511.295,37.2005,1.48063,300,0,0,45780,0,0,0,0,0),
(@CREATURE_GUID+01,15195,0,1,1,0,0,1750.57,511.697,37.7587,1.25444,300,0,0,45780,0,0,0,0,0),
(@CREATURE_GUID+02,15195,0,1,1,0,0,1732.31,520.874,36.3326,1.30942,300,0,0,45780,0,0,0,0,0),

-- Darkcaller Yanka
(@CREATURE_GUID+03,15197,0,1,1,0,0,1734.6,508.803,41.2847,1.6173,300,0,0,15260,0,0,0,0,0),

-- Sergeant Hartman
(@CREATURE_GUID+04,15199,0,1,1,0,0,-813.614,-547.184,15.6377,1.69193,300,0,0,15260,0,0,0,0,0);
DELETE FROM `game_event_gameobject` WHERE `guid` BETWEEN @GO_GUID+00 AND @GO_GUID+13;
INSERT INTO `game_event_gameobject` VALUES
SET @GO_GUID       := 17868; -- set by TDB team (14)
SET @CREATURE_GUID := 43456; -- set by TDB team (5)
DELETE FROM `game_event_creature` WHERE `guid` BETWEEN @CREATURE_GUID+00 AND @CREATURE_GUID+04;
INSERT INTO `game_event_creature` VALUES

-- Wickerman Ashes
DELETE FROM `gossip_menu` WHERE `entry` = 6535;
INSERT INTO `gossip_menu` VALUES
(6535,7737),
(6535,7738);
DELETE FROM `gossip_menu_option` WHERE `menu_id`=6535 AND `id`=0;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`) VALUES
(6535,0,0,"Smear the ash on my face like war paint!",1,1,0,0,0,0,"");

-- gossip conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=6535;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,6535,7738,0,0,1,0,24705,0,0,0,0,"","Wickerman Ember - Show different gossip if player is affected by aura 24705"),
(14,6535,7737,0,0,1,0,24705,0,0,1,0,"","Wickerman Ember - Show different gossip if player is affected by aura 24705"),
(15,6535,   0,0,0,1,0,24705,0,0,1,0,"","Wickerman Ember - Show different gossip option if player is affected by aura 24705");

-- GO smart script
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=180437;
DELETE FROM `smart_scripts` WHERE `entryorguid`=180437 AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(180437, 1, 0, 1, 62, 0, 100, 0, 6535, 0, 0, 0, 85, 24705, 34, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Wickerman Ember - on Gossip Select - Cast Invocation of the Wickerman'),
(180437, 1, 1, 0, 61, 0, 100, 0,    0, 0, 0, 0, 72,     0,  0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Wickerman Ember - on Link - Close gossip');
UPDATE `creature` SET `spawndist`=0, `MovementType`=0 WHERE `guid` IN (101804,101805,101806,101807,101808,101809,101810,101814,101815,101818,101819,101820,101823,101824,101825,101832,101834,101836,101837,101838,101839,101842,101845,101849,101850,101856,101859,101860,101862,101866,101872,101876,101877,101890,101921,101923);
UPDATE `creature` SET `spawndist`=0, `MovementType`=0 WHERE `guid` IN (106595,106596,106597,106598,106603,106604,106605,106607,106608,106626,106629,106631,106643,106646,106658,106663,106665,106668,106669,106675,106676,106679,106680,106681,106682,106683,106684,106685,106686,106687,106688,106692,106693,106696,106702,106703,106706,106722,106723,106724,106726,106727,106728,106733,106737,106741,106749,106755,106757,131072);
UPDATE `creature` SET `position_z`=72.130 WHERE `guid`=106631;
UPDATE `creature` SET `position_z`=72.902 WHERE `guid`=106675;
UPDATE `creature` SET `position_z`=69.505 WHERE `guid`=131072;
REPLACE INTO battleground_template (id, MinPlayersPerTeam, MaxPlayersPerTeam, MinLvl, MaxLvl, AllianceStartLoc, AllianceStartO, HordeStartLoc, HordeStartO, StartMaxDist, Weight, ScriptName, Comment) values
(6,0,2,10,80,0,0,0,0,0,1,'','All Arena');