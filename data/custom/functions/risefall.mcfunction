tag @s remove thru
execute positioned ~ ~-1 ~ run function custom:check_solid
execute as @s[tag=!thru] run tp @s ~ ~-2 ~
execute positioned ~ 128 ~ if entity @s[distance=..96] at @s if block ~ ~-1 ~ air run scoreboard players remove @s[tag=!thru] e_check 1
execute positioned ~ -32 ~ if entity @s[distance=..32] run tp @s ~ 1 ~
tag @s remove thru
function custom:check_solid
execute as @s[tag=thru] run tp @s ~ ~1 ~
tag @s[tag=thru] add thru2
execute at @s[tag=thru] run function custom:risefall
tag @s remove thru