tp @s ^ ^ ^-.01
scoreboard players set @s[tag=level4] cs_weapons -1
scoreboard players operation @s[tag=level4,scores={var3=3}] var0 *= @s cs_weapons
scoreboard players operation @s[tag=level4,scores={var3=3}] var1 *= @s cs_weapons
scoreboard players operation @s[tag=level4,scores={var3=3}] var2 *= @s cs_weapons
execute store result entity @s Motion[0] double 0.1 run scoreboard players get @s var0
execute store result entity @s Motion[1] double 0.1 run scoreboard players get @s var1
execute store result entity @s Motion[2] double 0.1 run scoreboard players get @s var2
kill @s[tag=level1,scores={var3=4..}]
kill @s[tag=level2,scores={var3=6..}]
kill @s[tag=level3,scores={var3=8..}]
kill @s[tag=level4,scores={var3=3..}]
kill @s[tag=level5,scores={var3=2..}]
scoreboard players add @s var3 1
tag @s[tag=level3] add break_stone
execute at @s[tag=level3] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:.1,Duration:3,Color:12566527}
execute at @s[tag=level3] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:.1,Duration:3,Color:16777215}

execute positioned ~ ~-2 ~ run scoreboard players add @e[type=enderman,distance=..2.5] damaged 2

execute positioned ~ ~-.5 ~ run scoreboard players add @e[tag=basic,distance=..2] damaged 1