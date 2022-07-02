tp @s ^ ^ ^-.01
execute store result entity @s Motion[0] double 0.03 run scoreboard players get @s var0
execute store result entity @s Motion[1] double 0.03 run scoreboard players get @s var1
execute store result entity @s Motion[2] double 0.03 run scoreboard players get @s var2
kill @s[tag=level1,scores={var3=25..}]
kill @s[tag=level2,scores={var3=35..}]
kill @s[tag=level3,scores={var3=45..}]
scoreboard players add @s var3 1
particle large_smoke ~ ~ ~ .3 .3 .3 .02 4 force

execute positioned ~ ~-2 ~ run scoreboard players add @e[type=enderman,distance=..2.5] damaged 2

execute positioned ~ ~-.5 ~ run scoreboard players add @e[tag=basic,distance=..2] damaged 1