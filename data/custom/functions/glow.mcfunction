tag @s[tag=glowed] remove glowed
execute as @e[tag=glow,distance=...9] store result score @s var2 run scoreboard players get @s var0
scoreboard players operation @e[tag=glow,distance=...9] var2 -= @s var0
execute if entity @e[tag=glow,scores={var2=..-1},distance=...9,limit=1] run tag @s add cancel
kill @e[tag=glow,scores={var2=..-1},distance=...9]

execute if entity @s[tag=cancel] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 water replace light[waterlogged=true]
execute if entity @s[tag=cancel] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace light

execute unless block ~ ~ ~ #custom:empty unless block ~ ~ ~ water[level=0] run tag @s add blocked

execute if entity @s[tag=blocked] if block ~ ~-1 ~ #custom:empty run tp @s ~ ~-1 ~
execute if entity @s[tag=blocked] if block ~ ~-1 ~ #custom:empty run tag @s remove blocked
execute if entity @s[tag=blocked] if block ~ ~1 ~ #custom:empty run tp @s ~ ~1 ~
execute if entity @s[tag=blocked] if block ~ ~1 ~ #custom:empty run tag @s remove blocked

execute at @s run function custom:glow_check

execute if score @s var0 matches ..0 if block ~ ~ ~ light run setblock ~ ~ ~ air
execute if score @s var0 matches ..0 run kill @s
kill @s[tag=!glowed]
data merge entity @s[tag=disappear] {Age:0,Duration:2}
tag @s remove glowed