summon area_effect_cloud ~ ~ ~ {Duration:2,UUID:[I;-228179636,-894692885,-1195638206,-1408040957]}
execute as f266414c-caac-11eb-b8bc-0242ac130003 run tp @s 0 0 0 ~ ~
execute as f266414c-caac-11eb-b8bc-0242ac130003 at @s run tp @s ^ ^ ^64

execute at @s[tag=level_1] anchored eyes run summon trident ~ ~ ~ {Tags:["level1","despawn","blade_bullet","assign"],Motion:[0.,.1,0.],Trident:{id:"minecraft:trident",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:44s}]}}}

execute at @s[tag=level_2] anchored eyes run summon trident ~ ~ ~ {Tags:["level2","despawn","blade_bullet","assign","f1"],Motion:[0.,.1,0.],Trident:{id:"minecraft:trident",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:8s}]}}}
execute at @s[tag=level_2] anchored eyes run summon trident ~ ~ ~ {Tags:["level2","despawn","blade_bullet","assign","f2"],Motion:[0.,.1,0.],Trident:{id:"minecraft:trident",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:8s}]}}}
execute at @s[tag=level_2] anchored eyes run summon trident ~ ~ ~ {Tags:["level2","despawn","blade_bullet","assign","f3"],Motion:[0.,.1,0.],Trident:{id:"minecraft:trident",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:8s}]}}}
execute at @s[tag=level_2] anchored eyes run summon arrow ^ ^ ^.3 {damage:12,Color:16777215,Tags:["level2","despawn","blade_bullet","assign"],Motion:[0.,.1,0.]}

execute at @s[tag=level_3] anchored eyes run summon snowball ~ ~ ~ {Tags:["level3","despawn","blade_bullet","assign","player_assign"],Motion:[0.,.1,0.]}

execute positioned ~ ~1.7 ~ as @e[tag=assign,tag=!f1,tag=!f2,tag=!f3] run tp @s ^ ^ ^.3 ~ ~
execute positioned ~ ~1.7 ~ as @e[tag=assign,tag=f1] run tp @s ^.2598 ^.15 ^.3 ~ ~
execute positioned ~ ~1.7 ~ as @e[tag=assign,tag=f2] run tp @s ^-.2598 ^.15 ^.3 ~ ~
execute positioned ~ ~1.7 ~ as @e[tag=assign,tag=f3] run tp @s ^ ^-.3 ^.3 ~ ~

execute as @e[tag=assign] run execute store result score @s var0 run data get entity f266414c-caac-11eb-b8bc-0242ac130003 Pos[0]
execute as @e[tag=assign] run execute store result score @s var1 run data get entity f266414c-caac-11eb-b8bc-0242ac130003 Pos[1]
execute as @e[tag=assign] run execute store result score @s var2 run data get entity f266414c-caac-11eb-b8bc-0242ac130003 Pos[2]
playsound minecraft:block.dispenser.launch player @a ~ ~ ~ 0.75 0.
execute as @s[tag=level_3] store result score @e[tag=assign,tag=player_assign] player_id run scoreboard players get @s player_id
tag @e[tag=assign] remove assign
kill f266414c-caac-11eb-b8bc-0242ac130003
scoreboard players set @s[tag=level_1] cs_delay 20
scoreboard players set @s[tag=level_2] cs_delay 16
scoreboard players set @s[tag=level_3] cs_delay 50