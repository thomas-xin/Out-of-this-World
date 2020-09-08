tp @s ^ ^ ^.01
execute store result entity @s[tag=level4] Motion[0] double 0.06 run scoreboard players get @s var0
execute store result entity @s[tag=level4] Motion[1] double 0.06 run scoreboard players get @s var1
execute store result entity @s[tag=level4] Motion[2] double 0.06 run scoreboard players get @s var2
execute store result entity @s[tag=level3] Motion[0] double 0.06 run scoreboard players get @s var0
execute store result entity @s[tag=level3] Motion[1] double 0.06 run scoreboard players get @s var1
execute store result entity @s[tag=level3] Motion[2] double 0.06 run scoreboard players get @s var2
execute store result entity @s[tag=level2] Motion[0] double 0.05 run scoreboard players get @s var0
execute store result entity @s[tag=level2] Motion[1] double 0.05 run scoreboard players get @s var1
execute store result entity @s[tag=level2] Motion[2] double 0.05 run scoreboard players get @s var2
execute store result entity @s[tag=level1] Motion[0] double 0.01 run scoreboard players get @s var0
execute store result entity @s[tag=level1] Motion[1] double 0.01 run scoreboard players get @s var1
execute store result entity @s[tag=level1] Motion[2] double 0.01 run scoreboard players get @s var2
execute as @s[type=chicken] unless entity @e[tag=nemesis_bullet,tag=level1,type=arrow,distance=..2,limit=1] run scoreboard players set @s var3 20
data merge entity @s[type=chicken,scores={var3=20..}] {DeathTime:19,Health:0}
kill @s[tag=level1,scores={var3=10..}]
kill @s[tag=level2,scores={var3=10..}]
kill @s[tag=level3,scores={var3=10..}]
scoreboard players add @s var3 1
tag @s[tag=level3,type=!arrow] add break_stone
tag @s[tag=level3,type=arrow] add break_obsidian
tag @s[tag=level1] add no_destroy
execute at @s[tag=level3] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:.1,Duration:3,Color:255}
execute at @s[tag=level3] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:.1,Duration:3,Color:16776960}
execute positioned ~ ~-2 ~ run effect give @e[type=enderman,distance=..2.5] instant_damage 1 1