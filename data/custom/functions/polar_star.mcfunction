summon area_effect_cloud ~ ~ ~ {Duration:2,UUID:[I;-228179636,-894692885,-1195638206,-1408040957]}
execute as f266414c-caac-11eb-b8bc-0242ac130003 run tp @s 0 0 0 ~ ~
execute as f266414c-caac-11eb-b8bc-0242ac130003 at @s run tp @s ^ ^ ^64

execute at @s[tag=level_1] anchored eyes run summon arrow ~ ~ ~ {damage:.25,Color:16777215,Tags:["level1","despawn","no_destroy","polar_star_bullet","assign"],Motion:[0.,.1,0.]}

execute at @s[tag=level_2] anchored eyes run summon arrow ~ ~ ~ {damage:.5,Color:16777215,Tags:["level2","despawn","no_destroy","polar_star_bullet","assign","f1"],Motion:[0.,.1,0.]}
execute at @s[tag=level_2] anchored eyes run summon arrow ~ ~ ~ {damage:.5,Color:16777215,Tags:["level2","despawn","no_destroy","polar_star_bullet","assign","f2"],Motion:[0.,.1,0.]}

execute at @s[tag=level_3] anchored eyes run summon trident ~ ~ ~ {Tags:["level3","despawn","polar_star_bullet","assign"],Motion:[0.,.1,0.]}

execute positioned ~ ~1.7 ~ as @e[tag=assign,tag=!f1,tag=!f2] run tp @s ^ ^ ^.3 ~ ~
execute positioned ~ ~1.7 ~ as @e[tag=assign,tag=f1] run tp @s ^ ^.175 ^.3 ~ ~
execute positioned ~ ~1.7 ~ as @e[tag=assign,tag=f2] run tp @s ^ ^-.175 ^.3 ~ ~

execute as @e[tag=assign] run execute store result score @s var0 run data get entity f266414c-caac-11eb-b8bc-0242ac130003 Pos[0]
execute as @e[tag=assign] run execute store result score @s var1 run data get entity f266414c-caac-11eb-b8bc-0242ac130003 Pos[1]
execute as @e[tag=assign] run execute store result score @s var2 run data get entity f266414c-caac-11eb-b8bc-0242ac130003 Pos[2]
playsound entity.blaze.shoot player @a ~ ~ ~ 0.75 2
tag @e[tag=assign] remove assign
kill f266414c-caac-11eb-b8bc-0242ac130003
scoreboard players set @s cs_delay 4