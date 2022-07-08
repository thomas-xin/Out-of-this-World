summon area_effect_cloud ~ ~ ~ {Duration:2,UUID:[I;-228179636,-894692885,-1195638206,-1408040957]}
execute as f266414c-caac-11eb-b8bc-0242ac130003 run tp @s 0 0 0 ~ ~
execute as f266414c-caac-11eb-b8bc-0242ac130003 at @s run tp @s ^ ^ ^64

execute at @s[tag=level_1] anchored eyes run summon armor_stand ^ ^ ^ {Tags:["level1","fireball_bullet","assign","player_assign","despawn"],Invulnerable:1b,Small:1b,Invisible:1b,Pose:{Head:[45f,0f,45f]},ArmorItems:[{},{},{},{id:green_stained_glass,Count:1b}]}

execute at @s[tag=level_2] anchored eyes run summon armor_stand ^ ^ ^ {Tags:["level2","fireball_bullet","assign","player_assign","despawn"],Invulnerable:1b,Small:1b,Invisible:1b,Pose:{Head:[45f,0f,45f]},ArmorItems:[{},{},{},{id:yellow_stained_glass,Count:1b}]}

execute at @s[tag=level_3] anchored eyes run summon armor_stand ^ ^ ^ {Tags:["level3","fireball_bullet","assign","player_assign","despawn"],Invulnerable:1b,Small:1b,Invisible:1b,Pose:{Head:[45f,0f,45f]},ArmorItems:[{},{},{},{id:blue_stained_glass,Count:1b}]}

execute store result score @e[tag=player_assign] player_id run scoreboard players get @s player_id

tp @e[tag=assign,sort=nearest,limit=1] ~ ~-.9 ~ ~ ~

execute as @e[tag=assign] run execute store result score @s var0 run data get entity f266414c-caac-11eb-b8bc-0242ac130003 Pos[0]
execute as @e[tag=assign] run execute store result score @s var1 run data get entity f266414c-caac-11eb-b8bc-0242ac130003 Pos[1]
execute as @e[tag=assign] run execute store result score @s var2 run data get entity f266414c-caac-11eb-b8bc-0242ac130003 Pos[2]

playsound entity.blaze.shoot player @a ~ ~ ~ 0.75 1.1
tag @e[tag=assign] remove assign
kill f266414c-caac-11eb-b8bc-0242ac130003
scoreboard players set @s[tag=level_1] cs_delay 16
scoreboard players set @s[tag=level_2] cs_delay 12
scoreboard players set @s[tag=level_3] cs_delay 8