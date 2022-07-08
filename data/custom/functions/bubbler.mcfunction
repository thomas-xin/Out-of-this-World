execute at @s[tag=level_3] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["bubbler_rando","r1"]}
execute at @s[tag=level_3] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["bubbler_rando","r2"]}
execute at @s[tag=level_3] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["bubbler_rando","r3"]}
execute at @s[tag=level_3] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["bubbler_rando","r4"]}

execute at @s[tag=level_1] anchored eyes run summon armor_stand ^ ^ ^ {Tags:["level1","bubbler_bullet","despawn","assign","player_assign"],NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Pose:{Head:[45f,0f,45f]},ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}

execute at @s[tag=level_2] anchored eyes run summon armor_stand ^ ^ ^ {Tags:["level2","bubbler_bullet","despawn","assign","player_assign"],NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Pose:{Head:[45f,0f,45f]},ArmorItems:[{},{},{},{id:"minecraft:cyan_stained_glass",Count:1b}]}

execute at @s[tag=level_3] anchored eyes run summon armor_stand ^ ^ ^ {Tags:["level3","bubbler_bullet","despawn","assign","player_assign"],NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Pose:{Head:[45f,0f,45f]},ArmorItems:[{},{},{},{id:"minecraft:white_stained_glass",Count:1b}]}

kill @e[tag=bubbler_rando,sort=random,limit=3]

execute at @e[tag=bubbler_rando,tag=r1,limit=1] run scoreboard players set @e[tag=bubbler_bullet,sort=nearest,limit=1] var0 0
execute at @e[tag=bubbler_rando,tag=r2,limit=1] run scoreboard players set @e[tag=bubbler_bullet,sort=nearest,limit=1] var0 6
execute at @e[tag=bubbler_rando,tag=r3,limit=1] run scoreboard players set @e[tag=bubbler_bullet,sort=nearest,limit=1] var0 12
execute at @e[tag=bubbler_rando,tag=r4,limit=1] run scoreboard players set @e[tag=bubbler_bullet,sort=nearest,limit=1] var0 18
kill @e[tag=bubbler_rando]

execute store result score @e[tag=player_assign] player_id run scoreboard players get @s player_id

tp @e[tag=assign,sort=nearest,limit=1] ~ ~-.6 ~ ~ ~
execute as @e[tag=assign,tag=level3,sort=nearest,limit=1] store result entity @s Rotation[1] float .5 run data get entity @e[tag=cs_rando,sort=random,limit=1] Rotation[0]
execute as @e[tag=assign,tag=level3,sort=nearest,limit=1] store result entity @s Rotation[0] float 1 run data get entity @e[tag=cs_rando,sort=random,limit=1] Rotation[0]

execute as @e[tag=assign,scores={var0=0}] at @s run tp @s ^3.62 ^-1.5 ^
execute as @e[tag=assign,scores={var0=6}] at @s run tp @s ^1.5 ^3.62 ^
execute as @e[tag=assign,scores={var0=12}] at @s run tp @s ^-3.62 ^1.5 ^
execute as @e[tag=assign,scores={var0=18}] at @s run tp @s ^-1.5 ^-3.62 ^

playsound minecraft:block.bubble_column.bubble_pop player @a ~ ~ ~ 1 1.5
playsound minecraft:block.dispenser.launch player @a ~ ~ ~ 0.5 2
tag @e[tag=assign] remove assign
scoreboard players set @s[tag=level_1] cs_delay 7
scoreboard players set @s[tag=level_2] cs_delay 4
scoreboard players set @s[tag=level_3] cs_delay 6
effect give @s[gamemode=!creative,scores={spur_charge=1..60}] slowness 1 0