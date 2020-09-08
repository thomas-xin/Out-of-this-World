scoreboard players add @s e_check 3
summon area_effect_cloud ~ ~ ~ {Tags:["e_shockwave","temp","wave6"],Duration:2147483647}
summon area_effect_cloud ~ ~ ~ {Tags:["e_shockwave","temp","wave1","fast"],Duration:2147483647}
execute at @s run tp @e[tag=temp,limit=2] ~ ~ ~ ~ 0
tag @e[tag=temp,limit=1] remove temp
execute at @s run tp @s ~ ~ ~ ~1.5 ~
execute as @s[scores={e_check=1..720}] run function custom:shockwave_6
kill @s