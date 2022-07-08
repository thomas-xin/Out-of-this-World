scoreboard players operation @a player_id -= @s player_id
summon area_effect_cloud ~ ~ ~ {Duration:2,UUID:[I;-228179636,-894692885,-1195638206,-1408040957]}
tp f266414c-caac-11eb-b8bc-0242ac130003 ~ ~ ~ facing entity @a[scores={player_id=0},limit=1] eyes
execute at f266414c-caac-11eb-b8bc-0242ac130003 run tp @s ^ ^ ^.5
kill f266414c-caac-11eb-b8bc-0242ac130003
execute as @s[scores={var3=49..}] store result entity @s Rotation[0] float 1 run data get entity @a[scores={player_id=0},limit=1] Rotation[0]
execute as @s[scores={var3=49..}] store result entity @s Rotation[1] float 1 run data get entity @a[scores={player_id=0},limit=1] Rotation[1]
execute at @s[scores={var3=49..}] run summon armor_stand ^ ^ ^ {Tags:["level4","bubbler_bullet","despawn","assign","player_assign"],NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Pose:{Head:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:nether_star",Count:1b}]}
execute store result score @e[tag=assign,distance=..4,limit=1] player_id run scoreboard players get @s player_id
execute store result entity @e[tag=assign,distance=..4,limit=1] Rotation[0] float 1 run data get entity @a[scores={player_id=0},limit=1] Rotation[0]
execute store result entity @e[tag=assign,distance=..4,limit=1] Rotation[1] float 1 run data get entity @a[scores={player_id=0},limit=1] Rotation[1]
execute at @s[scores={var3=49..}] run playsound minecraft:block.bamboo.break player @a ~ ~ ~ 1 .8
tag @e[tag=assign] remove assign
scoreboard players operation @a player_id += @s player_id