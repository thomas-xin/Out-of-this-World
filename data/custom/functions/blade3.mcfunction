summon area_effect_cloud 0 0 0 {Duration:1,Tags:["blade3_target"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["blade3_target"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["blade3_target"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["blade3_target"]}
execute as @e[tag=blade3_target] at @e[tag=cs_rando,sort=random,limit=1] run tp @s 0 0 0 ~ ~
execute at @s run tp @e[tag=blade3_target] 0 0 0
execute as @e[tag=blade3_target,sort=random,limit=2] at @s run tp @s ^ ^ ^16
execute as @e[tag=blade3_target,sort=random,limit=2] at @s run tp @s ^ ^-.5 ^12
summon arrow ^ ^ ^ {damage:1,Color:12566527,Tags:["level4","despawn","polar_star_bullet","assign"],Motion:[0.,.1,0.]}
summon arrow ^ ^ ^ {damage:2,Color:12566527,Tags:["level4","despawn","polar_star_bullet","assign"],Motion:[0.,.1,0.]}
summon arrow ^ ^ ^ {damage:5,Color:16777215,Tags:["level5","despawn","polar_star_bullet","assign"],Motion:[0.,.1,0.]}
execute as @e[tag=assign] run execute store result score @s var0 run data get entity @e[tag=blade3_target,sort=random,limit=1] Pos[0]
execute as @e[tag=assign] run execute store result score @s var1 run data get entity @e[tag=blade3_target,sort=random,limit=1] Pos[1]
execute as @e[tag=assign] run execute store result score @s var2 run data get entity @e[tag=blade3_target,sort=random,limit=1] Pos[2]
execute as @e[tag=assign] at @e[tag=cs_rando,sort=random,limit=1] run tp @s 0 0 0 ~ ~
execute at @s as @e[tag=assign,sort=random,limit=3] run tp @s ~ ~1 ~
execute at @s as @e[tag=assign,sort=random,limit=3] run tp @s ~ ~.5 ~
execute as @e[tag=assign] at @s run tp @s ^ ^ ^-4
playsound minecraft:block.dispenser.launch player @a ~ ~ ~ 0.75 2
tag @e[tag=assign] remove assign
kill @e[tag=cs_target]
execute positioned ~ ~2 ~ unless entity @e[tag=king,distance=..4] run summon vex ~ ~-2 ~ {Glowing:1,Invulnerable:1,NoAI:1,Tags:["king"],PersistenceRequired:1b,HandItems:[{id:diamond_sword,Count:1b,tag:{Enchantments:[{id:sharpness,lvl:1s}]}},{}]}
execute as @e[tag=king,sort=nearest,distance=..2.5,limit=1] run tp @s ~ ~2 ~ ~180 ~
particle sweep_attack ~ ~1 ~ 3 1 3 1 4 force

scoreboard players set @a[distance=..3.5] var1 1
execute as @a[distance=..3.5] run function custom:damage_players

scoreboard players add @e[tag=basic,distance=..3.5] damaged 1
scoreboard players add @e[tag=basic,distance=..2.5,sort=random,limit=3] damaged 2