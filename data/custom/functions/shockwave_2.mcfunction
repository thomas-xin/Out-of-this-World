scoreboard players add @s e_check 5
summon area_effect_cloud ~ ~ ~ {Tags:["e_shockwave","temp","wave2"],Duration:2147483647}
execute at @s run tp @e[tag=temp,limit=1] ~ ~ ~ ~ 0
tag @e[tag=temp,limit=1] remove temp
execute at @s run tp @s ~ ~ ~ ~5 ~
execute as @s[scores={e_check=1..360}] run function custom:shockwave_2
kill @s