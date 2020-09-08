scoreboard players add @s e_check 3
summon area_effect_cloud ~ ~ ~ {Tags:["e_shockwave","temp","wave4"],Duration:2147483647}
execute at @s run tp @e[tag=temp,limit=1] ~ ~ ~ ~ 0
tag @e[tag=temp,limit=1] remove temp
execute at @s run tp @s ~ ~ ~ ~3 ~
execute as @s[scores={e_check=1..360}] run function custom:shockwave_4
kill @s