summon area_effect_cloud ~ ~ ~ {Duration:2,UUID:[I;-228179636,-894692885,-1195638206,-1408040957]}
execute as f266414c-caac-11eb-b8bc-0242ac130003 run tp @s 0 0 0 ~ ~
execute as f266414c-caac-11eb-b8bc-0242ac130003 at @s run tp @s ^ ^ ^96

execute at @s[tag=level_1] anchored eyes run summon trident ~ ~ ~ {Tags:["level3","despawn","nemesis_bullet","assign","f1"],Motion:[0.,.1,0.]}
execute at @s[tag=level_1] anchored eyes run summon trident ~ ~ ~ {Tags:["level3","despawn","nemesis_bullet","assign","f2"],Motion:[0.,.1,0.]}
execute at @s[tag=level_1] anchored eyes run summon trident ~ ~ ~ {Tags:["level3","despawn","nemesis_bullet","assign","f3"],Motion:[0.,.1,0.]}
execute at @s[tag=level_1] anchored eyes run summon trident ~ ~ ~ {Tags:["level3","despawn","nemesis_bullet","assign","f4"],Motion:[0.,.1,0.]}
execute at @s[tag=level_1] anchored eyes run summon small_fireball ~ ~ ~ {Tags:["level4","despawn","nemesis_bullet","assign","f5"],Motion:[0.,.1,0.]}
execute at @s[tag=level_1] anchored eyes run summon arrow ~ ~ ~ {Fire:40,damage:4,Color:255,Tags:["level3","despawn","nemesis_bullet","assign"],Motion:[0.,.1,0.]}

execute at @s[tag=level_2] anchored eyes run summon arrow ~ ~ ~ {damage:3,Color:65280,Tags:["level2","despawn","nemesis_bullet","assign"],Motion:[0.,.1,0.]}
execute at @s[tag=level_2] anchored eyes run summon arrow ~ ~ ~ {damage:3,Color:4177727,Tags:["level2","despawn","nemesis_bullet","assign","f5"],Motion:[0.,.1,0.]}

execute at @s[tag=level_3] anchored eyes run summon chicken ~ ~ ~ {Invulnerable:1,Tags:["level1","despawn","nemesis_bullet","assign"],Motion:[0.,.1,0.]}
execute at @s[tag=level_3] anchored eyes run summon arrow ~ ~ ~ {damage:1,Color:16776960,Tags:["level1","despawn","nemesis_bullet","assign"],Motion:[0.,.1,0.]}

execute positioned ~ ~1.7 ~ as @e[tag=assign,tag=!f1,tag=!f2,tag=!f3,tag=!f4,tag=!f5] run tp @s ^ ^ ^.3 ~ ~
execute positioned ~ ~1.7 ~ as @e[tag=assign,tag=f1] run tp @s ^ ^.25 ^.3 ~ ~
execute positioned ~ ~1.7 ~ as @e[tag=assign,tag=f2] run tp @s ^ ^-.25 ^.3 ~ ~
execute positioned ~ ~1.7 ~ as @e[tag=assign,tag=f3] run tp @s ^.25 ^ ^.3 ~ ~
execute positioned ~ ~1.7 ~ as @e[tag=assign,tag=f4] run tp @s ^-.25 ^ ^.3 ~ ~
execute positioned ~ ~1.7 ~ as @e[tag=assign,tag=f5] run tp @s ^ ^ ^.8 ~ ~

execute as @e[tag=assign,type=chicken] run tp @s ^ ^ ^.3 ~ ~
execute as @e[tag=assign,type=chicken] at @s run tp @s ~ ~1 ~

execute as @e[tag=assign] run execute store result score @s var0 run data get entity f266414c-caac-11eb-b8bc-0242ac130003 Pos[0]
execute as @e[tag=assign] run execute store result score @s var1 run data get entity f266414c-caac-11eb-b8bc-0242ac130003 Pos[1]
execute as @e[tag=assign] run execute store result score @s var2 run data get entity f266414c-caac-11eb-b8bc-0242ac130003 Pos[2]
execute at @s[tag=level_1] run playsound entity.blaze.shoot player @a ~ ~ ~ 1 1.5
execute at @s[tag=level_2] run playsound entity.blaze.shoot player @a ~ ~ ~ 0.75 2
execute at @s[tag=level_3] run playsound minecraft:block.bubble_column.bubble_pop player @a ~ ~ ~ 1 1.5
execute at @s[tag=level_3] run playsound minecraft:block.dispenser.launch player @a ~ ~ ~ 0.5 2
tag @e[tag=assign] remove assign
kill f266414c-caac-11eb-b8bc-0242ac130003
scoreboard players set @s cs_delay 12