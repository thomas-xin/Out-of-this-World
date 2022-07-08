summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["snake_rando","r1"]}
summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["snake_rando","r2"]}
summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["snake_rando","r3"]}
summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["snake_rando","r4"]}

execute at @s[tag=level_1] anchored eyes run summon armor_stand ^ ^ ^ {Tags:["level1","snake_bullet","assign","player_assign","despawn"],NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Pose:{Head:[45f,0f,45f]},ArmorItems:[{},{},{},{id:"minecraft:green_stained_glass",Count:1b}]}

execute at @s[tag=level_2] anchored eyes run summon armor_stand ^ ^ ^ {Tags:["level2","snake_bullet","assign","player_assign","despawn"],NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Pose:{Head:[45f,0f,45f]},ArmorItems:[{},{},{},{id:"minecraft:yellow_stained_glass",Count:1b}]}

execute at @s[tag=level_3] anchored eyes run summon armor_stand ^ ^ ^ {Tags:["level3","snake_bullet","assign","player_assign","despawn"],NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Pose:{Head:[45f,0f,45f]},ArmorItems:[{},{},{},{id:"minecraft:blue_stained_glass",Count:1b}]}

kill @e[tag=snake_rando,sort=random,limit=3]

execute at @e[tag=snake_rando,tag=r1,limit=1] run scoreboard players set @e[tag=snake_bullet,sort=nearest,limit=1] var0 0
execute at @e[tag=snake_rando,tag=r2,limit=1] run scoreboard players set @e[tag=snake_bullet,sort=nearest,limit=1] var0 2
execute at @e[tag=snake_rando,tag=r3,limit=1] run scoreboard players set @e[tag=snake_bullet,sort=nearest,limit=1] var0 4
execute at @e[tag=snake_rando,tag=r4,limit=1] run scoreboard players set @e[tag=snake_bullet,sort=nearest,limit=1] var0 6
kill @e[tag=snake_rando]

execute store result score @e[tag=player_assign] player_id run scoreboard players get @s player_id

tp @e[tag=assign,sort=nearest,limit=1] ~ ~-.6 ~ ~ ~

execute as @e[tag=assign,scores={var0=0}] at @s run tp @s ^1.21 ^ ^
execute as @e[tag=assign,scores={var0=2}] at @s run tp @s ^ ^1.21 ^
execute as @e[tag=assign,scores={var0=4}] at @s run tp @s ^-1.21 ^ ^
execute as @e[tag=assign,scores={var0=6}] at @s run tp @s ^ ^-1.21 ^

playsound entity.blaze.shoot player @a ~ ~ ~ 0.75 1.2
tag @e[tag=assign] remove assign
scoreboard players set @s cs_delay 6