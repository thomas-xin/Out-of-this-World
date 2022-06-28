execute at @s[tag=!secondary] positioned ~ ~-1 ~ run effect give @e[distance=..4] poison 12 2
execute at @s[tag=!secondary] positioned ~ ~-1 ~ run effect give @e[distance=..3] wither 12 2
tag @s add break_obsidian
execute as @s[tag=!secondary] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace water
execute as @s[tag=!secondary] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace lava
execute as @s[tag=channeled] run setblock ~ ~ ~ black_stained_glass keep

execute as @s[tag=!secondary,tag=!channeled] run summon fireball ~ ~-.6 ~ {Glowing:1b,ExplosionPower:3,direction:[0.,-.8,0.],power:[0.,-.5,0.],Tags:["despawn","moved"]}
execute as @s[tag=channeled] run summon fireball ~ ~.4 ~ {ExplosionPower:3,direction:[0.,-.8,0.],power:[0.,-.5,0.],Tags:["despawn","moved"]}
execute as @s[tag=secondary] run summon creeper ~ ~-.6 ~ {ExplosionRadius:3,Invulnerable:1b,Fuse:0,Tags:["moved"]}

execute as @s[tag=!secondary] run summon arrow ~ ~-1 ~ {damage:20d,Color:1,Tags:["sculk_spread"]}

summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["randomX","r1"]}
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["randomX","r2"]}
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["randomX","r3"]}
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["randomX","r4"]}
tag @e[tag=randomX,sort=random,limit=1] add selected
execute as @e[tag=selected,tag=r1] run function custom:trident_1
execute as @e[tag=selected,tag=r2] run function custom:trident_2
execute as @e[tag=selected,tag=r3] run function custom:trident_3
execute as @e[tag=selected,tag=r4] run function custom:trident_4
kill @e[tag=randomX]

execute at @s[tag=secondary] as @e[tag=cluster,distance=..1] run tag @s add nocluster
execute at @s[tag=channeled] as @e[tag=cluster,distance=..1] run tag @s add nocluster
execute at @s unless block ~ ~1 ~ air unless block ~ ~1 ~ cave_air as @e[type=trident,distance=..1] at @s run tp @s ~ ~-2 ~
execute at @s unless block ~ ~1 ~ air unless block ~ ~1 ~ cave_air as @e[tag=moved,distance=..1] at @s run tp @s ~ ~.6 ~

particle sweep_attack ~ ~ ~ 0 0 0 1 0 force
particle sweep_attack ~ ~1 ~ 0.5 0 0.5 1 3 force
playsound minecraft:entity.dragon_fireball.explode neutral @a ~ ~ ~ 5 0.6
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 2 0. 0.

execute as @s[tag=!secondary,tag=!channeled] run function custom:tornado_ultralight
execute as @s[tag=!secondary] run function custom:tiny_explode