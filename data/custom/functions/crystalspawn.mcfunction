execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random","r1"]}
execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random","r2"]}
execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random","r3"]}
execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random","r4"]}
tag @e[tag=random,sort=random,limit=1] add selected
execute at @e[tag=selected,tag=r1] run fill ~ ~-1 ~ ~ ~5 ~ glass
execute at @e[tag=selected,tag=r1] run fill ~ ~-3 ~ ~ ~7 ~ glass keep
execute at @e[tag=selected,tag=r2] run fill ~ ~-1 ~ ~ ~5 ~ white_stained_glass
execute at @e[tag=selected,tag=r2] run fill ~ ~-3 ~ ~ ~7 ~ white_stained_glass keep
execute at @e[tag=selected,tag=r3] run fill ~ ~-1 ~ ~ ~5 ~ quartz_pillar
execute at @e[tag=selected,tag=r3] run fill ~ ~-3 ~ ~ ~7 ~ quartz_pillar keep
execute as @e[tag=selected,tag=r4] run execute store result entity @s Rotation[0] float 1 run data get entity @e[tag=angle,sort=random,limit=1] Rotation[0]
execute if entity @e[tag=selected,limit=1,tag=r4] at @s run tp @s ~ ~.9 ~
execute at @e[tag=selected,tag=r4] run setblock ^-1 ^.3 ^ chiseled_quartz_block
execute at @e[tag=selected,tag=r4] run setblock ^-2 ^.6 ^ chiseled_quartz_block
execute at @e[tag=selected,tag=r4] run setblock ^-3 ^.9 ^ chiseled_quartz_block
execute at @e[tag=selected,tag=r4] run setblock ^-4 ^1.2 ^ chiseled_quartz_block
execute at @e[tag=selected,tag=r4] run setblock ^1 ^-.3 ^ chiseled_quartz_block
execute at @e[tag=selected,tag=r4] run setblock ^2 ^-.6 ^ chiseled_quartz_block
execute at @e[tag=selected,tag=r4] run setblock ^3 ^-.9 ^ chiseled_quartz_block
execute at @e[tag=selected,tag=r4] run setblock ^4 ^-1.2 ^ chiseled_quartz_block
kill @e[tag=random]