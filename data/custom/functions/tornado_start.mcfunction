summon area_effect_cloud 0 0 0 {Tags:["blow_centre"],Duration:32}
execute as @e[tag=blow_centre,sort=random,limit=16] at @s run tp @s ~ ~ ~ ~7 0
execute as @e[tag=blow_centre,sort=random,limit=16] at @s run tp @s ~ ~ ~ ~-23 0
execute at @e[tag=blow_centre] run summon area_effect_cloud 0 0 0 {Tags:["blow"],Duration:1}
execute as @e[tag=blow] at @e[tag=blow_centre,sort=random,limit=1] run tp @s ^ ^ ^64
execute as @s[tag=summon] at @p run tp @s ^ ^-2 ^16 ~ 0
execute at @s[tag=summon] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["t1","timed"],Passengers:[{id:area_effect_cloud,Tags:["timed"],Particle:"large_smoke",Radius:1.6f,Duration:614,Effects:[{Id:9b,Amplifier:0b,Duration:20},{Id:25b,Amplifier:9b,Duration:10}]}]}
execute at @s[tag=summon] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["t2","timed"],Passengers:[{id:area_effect_cloud,Tags:["timed"],Particle:"squid_ink",Radius:1.6f,Duration:614,Effects:[{Id:9b,Amplifier:0b,Duration:20},{Id:25b,Amplifier:9b,Duration:10}]}]}
execute at @s[tag=summon] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["t3","timed"],Passengers:[{id:area_effect_cloud,Tags:["timed"],Particle:"poof",Radius:1.6f,Duration:614,Effects:[{Id:9b,Amplifier:0b,Duration:20},{Id:25b,Amplifier:9b,Duration:10}]}]}
tag @e[tag=summon] remove summon
execute unless entity @e[tag=tornado,limit=1] as @e[tag=falling] unless entity @s[nbt={OnGround:0b}] run tag @e remove falling

execute as @e[type=falling_block,tag=!thrown] at @s unless entity @e[tag=tornado,distance=..64,limit=1] run tag @s add thrown
execute as @e[type=falling_block] at @s run function custom:falling_block_entity

execute if entity @e[tag=tornado,limit=1] run function custom:tornado_main
execute in overworld positioned 0 0 0 unless entity @e[tag=wind,distance=..1] run summon armor_stand 0 0 0 {Invisible:1b,Invulnerable:1b,Tags:["wind"]}
execute as @e[tag=wind,sort=random,limit=1] run function custom:windrandomizer
execute as @e[tag=flying,tag=!thrown] run execute store result entity @s Motion[0] double 0.02 run data get entity @e[tag=blow,sort=random,limit=1] Pos[0]
execute as @e[tag=flying,tag=!thrown] run execute store result entity @s Motion[2] double 0.02 run data get entity @e[tag=blow,sort=random,limit=1] Pos[2]
tag @e[tag=flying,tag=!thrown] add thrown
tag @e[tag=immune] remove immune
tag @a[nbt={abilities:{flying:1b}}] add immune
execute as @e[tag=rotate] at @s run tp @s ~ ~ ~ ~16 ~
execute unless entity @e[tag=global_delay,limit=1] run execute at @e[tag=tornado] run tag @e[tag=none,distance=..4,limit=1,sort=random] add scatter
execute unless entity @e[tag=global_delay,limit=1] run tag @e[tag=scatter] remove none