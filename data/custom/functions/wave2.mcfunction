particle explosion ~ ~ ~ 1 .5 1 1 1 force
effect give @a[distance=..4] instant_damage 2 2
scoreboard players add @e[tag=basic,distance=..4] damaged 6
execute positioned ^ ^ ^-3 run fill ~-2 ~ ~-2 ~2 ~5 ~2 air replace #impermeable
execute as @s[tag=!tsunami_w] positioned ^ ^ ^-3 run fill ~-2 ~ ~-2 ~2 ~5 ~2 air replace water
execute as @s[tag=tsunami_w] run fill ^-.5 ^-1 ^-2 ^-.5 ^1 ^-2 water[level=9] keep
execute as @s[tag=tsunami_w] run fill ^.5 ^-1 ^-2 ^.5 ^1 ^-2 water[level=9] keep
execute as @s[tag=!tsunami_l] positioned ^ ^ ^-3 run fill ~-2 ~ ~-2 ~2 ~5 ~2 air replace lava
execute as @s[tag=tsunami_l] run fill ^-.5 ^-1 ^-2 ^-.5 ^1 ^-2 lava[level=9] keep
execute as @s[tag=tsunami_l] run fill ^.5 ^-1 ^-2 ^.5 ^1 ^-2 lava[level=9] keep
tag @s add break_stone
tag @s add delete_blocks
execute at @s[tag=thru2] run function custom:break_blocks
execute at @s[tag=thru2] positioned ~ ~-1 ~ run function custom:break_blocks
execute at @s[tag=thru2] positioned ^1 ^-1 ^ run function custom:break_blocks
execute at @s[tag=thru2] positioned ^-1 ^-1 ^ run function custom:break_blocks
setblock ~ ~ ~ fire keep