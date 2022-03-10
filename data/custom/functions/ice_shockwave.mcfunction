tp ^ ^ ^0.4
execute if block ~ 0 ~ air positioned ~ -32 ~ run tag @s[distance=..32] add void_low
tag @s[tag=thru] remove thru
execute unless entity @s[tag=void_low] positioned ~ ~.5 ~ run function custom:check_solid
execute if entity @s[tag=thru] run tp @s ~ ~0.45 ~ ~ 0
tag @s[tag=thru] remove thru
execute unless entity @s[tag=void_low] positioned ~ ~-.1 ~ run function custom:check_solid
execute unless entity @s[tag=thru] run tp @s ~ ~-0.45 ~ ~ 0
execute unless entity @s[tag=thru] run scoreboard players remove @s var0 1
execute at @s run tp ^ ^ ^0.05

effect give @e[tag=basic,distance=..1.5] instant_damage 1 0
effect give @a[distance=..1.5] instant_damage 1 0
effect give @e[tag=undead,tag=!smudge_boss,distance=..1.5] instant_health 1 0
effect give @e[tag=basic,distance=..2] slowness 16 1
effect give @e[tag=undead,tag=!smudge_boss,distance=..2] slowness 16 1
effect give @p[distance=..2] slowness 16 1
effect give @e[tag=basic,distance=..2] weakness 8
effect give @e[tag=undead,tag=!smudge_boss,distance=..2] weakness 8
effect give @p[distance=..2] weakness 8
effect give @p[distance=..2] mining_fatigue 24
effect give @p[distance=..2] hunger 4 127

execute at @e[type=ender_dragon,distance=..8] run summon creeper ~ ~ ~ {Fuse:0,Invulnerable:1,ExplosionRadius:4,powered:1}
execute at @e[type=end_crystal,nbt=!{Glowing:1b},distance=..3] run summon creeper ~ ~ ~ {Fuse:0,Invulnerable:1,ExplosionRadius:2,powered:1}

summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r1"],UUID:[I;-228179636,-894692885,-1195638206,-1407975423]}
summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r2"],UUID:[I;-228179636,-894692885,-1195638206,-1407975422]}
summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r3"],UUID:[I;-228179636,-894692885,-1195638206,-1407975421]}
summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r4"],UUID:[I;-228179636,-894692885,-1195638206,-1407975420]}
summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r5"],UUID:[I;-228179636,-894692885,-1195638206,-1407975419]}
summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r6"],UUID:[I;-228179636,-894692885,-1195638206,-1407975418]}
summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r7"],UUID:[I;-228179636,-894692885,-1195638206,-1407975417]}
summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r8"],UUID:[I;-228179636,-894692885,-1195638206,-1407975416]}
summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r9"],UUID:[I;-228179636,-894692885,-1195638206,-1407975415]}
summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r10"],UUID:[I;-228179636,-894692885,-1195638206,-1407975414]}
summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r11"],UUID:[I;-228179636,-894692885,-1195638206,-1407975413]}
summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r12"],UUID:[I;-228179636,-894692885,-1195638206,-1407975412]}
kill @e[tag=random,sort=random,limit=11]

execute at f266414c-caac-11eb-b8bc-0242ac140001 run playsound minecraft:block.amethyst_cluster.break hostile @a[distance=..20] ~ ~ ~ 0.15
execute at f266414c-caac-11eb-b8bc-0242ac140002 run playsound minecraft:block.glass.break hostile @a[distance=..24] ~ ~ ~ 0.3 0.8
execute at f266414c-caac-11eb-b8bc-0242ac140003 run playsound minecraft:block.glass.break hostile @a[distance=..24] ~ ~ ~ 0.4 1.2
execute at f266414c-caac-11eb-b8bc-0242ac140001 run summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Pose:{Head:[45f,45f,45f]},ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}],Tags:["assigned","sinking"]}
execute at f266414c-caac-11eb-b8bc-0242ac140002 run summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Pose:{Head:[30f,30f,30f]},ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}],Tags:["assigned","sinking"]}
execute at f266414c-caac-11eb-b8bc-0242ac140003 run summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Pose:{Head:[60f,60f,60f]},ArmorItems:[{},{},{},{id:"minecraft:blue_ice",Count:1b}],Tags:["assigned","sinking"]}
execute at f266414c-caac-11eb-b8bc-0242ac140004 run summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Pose:{Head:[30f,30f,60f]},ArmorItems:[{},{},{},{id:"minecraft:snow_block",Count:1b}],Tags:["assigned","sinking"]}
execute at f266414c-caac-11eb-b8bc-0242ac140005 run summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Pose:{Head:[30f,60f,30f]},ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}],Tags:["assigned","sinking"]}
execute at f266414c-caac-11eb-b8bc-0242ac140006 run summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Pose:{Head:[60f,30f,60f]},ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}],Tags:["assigned","sinking"]}
execute at f266414c-caac-11eb-b8bc-0242ac140007 run summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Pose:{Head:[60f,60f,30f]},ArmorItems:[{},{},{},{id:"minecraft:blue_ice",Count:1b}],Tags:["assigned","sinking"]}
execute at f266414c-caac-11eb-b8bc-0242ac140008 run summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Pose:{Head:[60f,30f,60f]},ArmorItems:[{},{},{},{id:"minecraft:snow_block",Count:1b}],Tags:["assigned","sinking"]}
execute at f266414c-caac-11eb-b8bc-0242ac140009 run summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Pose:{Head:[30f,60f,60f]},ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}],Tags:["assigned","sinking"]}
execute at f266414c-caac-11eb-b8bc-0242ac140010 run summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Pose:{Head:[30f,45f,60f]},ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}],Tags:["assigned","sinking"]}
execute at f266414c-caac-11eb-b8bc-0242ac140011 run summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Pose:{Head:[60f,30f,45f]},ArmorItems:[{},{},{},{id:"minecraft:blue_ice",Count:1b}],Tags:["assigned","sinking"]}
execute at f266414c-caac-11eb-b8bc-0242ac140012 run summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Pose:{Head:[45f,60f,30f]},ArmorItems:[{},{},{},{id:"minecraft:snow_block",Count:1b}],Tags:["assigned","sinking"]}
kill @e[tag=random,limit=1]

summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r1"]}
summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r2"]}
summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r3"]}
kill @e[tag=random,sort=random,limit=2]
execute at @s if entity @e[tag=r1,limit=1] run tp @e[tag=assigned] ~ ~.4 ~
execute at @s if entity @e[tag=r2,limit=1] run tp @e[tag=assigned] ^-.6 ^.2 ^
execute at @s if entity @e[tag=r3,limit=1] run tp @e[tag=assigned] ^.6 ^.2 ^
execute if entity @e[tag=r1,limit=1] run particle sweep_attack ~ ~-.3 ~ 1 1 1 .1 1
execute if entity @e[tag=r2,limit=1] run particle end_rod ~ ~ ~ 1 1 1 .08 4
execute unless entity @e[tag=r1,limit=1] run particle poof ~ ~ ~ 1 1 1 .09 6
execute unless entity @e[tag=r2,limit=1] run particle cloud ~ ~ ~ 1 1 1 .1 3
kill @e[tag=random,limit=1]
tag @e[tag=assigned] remove assigned