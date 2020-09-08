execute at @e[tag=s_cave_crystal_generator] run function custom:crystalspread
execute as @e[tag=s_cave_crystal_generator] run execute store result entity @s Rotation[0] float 1 run data get entity @e[tag=angle,limit=1] Rotation[0]
execute as @e[tag=s_cave_crystal_generator] at @s run tp @s ^ ^ ^2
execute at @e[tag=s_cave_crystal_generator] as @e[type=chicken,distance=..6] run data merge entity @s {Health:0,DeathTime:19}
execute as @e[tag=s_cave_crystal_generator] at @s if entity @e[type=chicken,distance=..6,limit=1] run tp @s ^ ^ ^1.5
execute as @e[tag=crystal,sort=random,limit=7] if entity @s[tag=c1] as @e[tag=angle] at @s run tp @s ~ ~ ~ ~23 ~
execute as @e[tag=crystal,sort=random,limit=7] if entity @s[tag=c2] as @e[tag=angle] at @s run tp @s ~ ~ ~ ~-23 ~
execute as @e[tag=crystal,sort=random,limit=9] if entity @s[tag=c3] as @e[tag=s_cave_crystal_generator] at @s if entity @s[y=8,dy=128] run tp @s ~ ~-1.4 ~
execute as @e[tag=crystal,sort=random,limit=9] if entity @s[tag=c4] as @e[tag=s_cave_crystal_generator] at @s unless block ~ ~8 ~ water if entity @s[y=0,dy=48] run tp @s ~ ~1.7 ~