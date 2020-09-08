tp @s ^ ^ ^-.01
execute store result entity @s[tag=!level2] Motion[0] double 0.05 run scoreboard players get @s var0
execute store result entity @s[tag=!level2] Motion[1] double 0.05 run scoreboard players get @s var1
execute store result entity @s[tag=!level2] Motion[2] double 0.05 run scoreboard players get @s var2
execute store result entity @s[tag=level2] Motion[0] double 0.06 run scoreboard players get @s var0
execute store result entity @s[tag=level2] Motion[1] double 0.06 run scoreboard players get @s var1
execute store result entity @s[tag=level2] Motion[2] double 0.06 run scoreboard players get @s var2
kill @s[tag=level1,scores={var3=14..}]
kill @s[tag=level2,scores={var3=9..}]
kill @s[tag=level3,scores={var3=15..}]
scoreboard players add @s var3 1
tag @s add break_stone
execute at @s[tag=!level2] run particle poof ~ ~ ~ .3 .3 .3 .02 4 force
execute at @s[tag=level3] run summon area_effect_cloud ~ ~ ~ {Radius:1,Duration:40,Color:16777215,Tags:["blade3"]}
execute as @e[tag=blade3,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
execute positioned ~ ~-2 ~ run effect give @e[type=enderman,distance=..2.5] instant_damage 1 1