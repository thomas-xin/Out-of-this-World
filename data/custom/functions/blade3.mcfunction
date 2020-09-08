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
execute as @e[tag=king,sort=nearest,limit=1] run tp @s ~ ~2 ~ ~180 ~
scoreboard players set @a[distance=.01..3.5] var1 1
execute as @a[distance=.01..3.5] run function custom:damage_players
effect give @e[tag=living,distance=.01..3.5] instant_damage 1 0
effect give @e[tag=undead,distance=.01..3.5] instant_health 1 0
effect give @e[tag=living,distance=.01..2.5] instant_damage 21 0
effect give @e[tag=undead,distance=.01..2.5] instant_health 21 0
execute positioned ~ ~-2 ~ as @e[type=wither,distance=..4] run data merge entity @s {ActiveEffects:[{Id:6,Amplifier:0,Duration:20}]}
execute positioned ~ ~-2 ~ at @e[type=ender_dragon,distance=..5] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1}
particle sweep_attack ~ ~1 ~ 3 1 3 1 4 force