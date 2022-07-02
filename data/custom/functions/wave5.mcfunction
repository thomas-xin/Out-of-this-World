particle explosion ~ ~ ~ 1 .5 1 1 2 force
effect give @a[distance=..5] instant_damage 4 4
scoreboard players add @e[tag=basic,distance=..4] damaged 48
execute positioned ^ ^ ^-4 run fill ~-3 ~ ~-3 ~3 ~7 ~3 air replace #impermeable
execute as @s[tag=!tsunami_w] positioned ^ ^ ^-4 run fill ~-2.5 ~ ~-2.5 ~2.5 ~6 ~2.5 air replace water
execute as @s[tag=tsunami_w] run fill ^-1 ^-1 ^-2 ^-1 ^4 ^-2 water[level=9] keep
execute as @s[tag=tsunami_w] run fill ^1 ^-1 ^-2 ^1 ^4 ^-2 water[level=9] keep
execute as @s[tag=tsunami_w] run fill ^ ^-1 ^-2 ^ ^4 ^-2 water[level=9] keep
execute as @s[tag=!tsunami_l] positioned ^ ^ ^-4 run fill ~-2.5 ~ ~-2.5 ~2.5 ~6 ~2.5 air replace lava
execute as @s[tag=tsunami_l] run fill ^-1 ^-1 ^-2 ^-1 ^4 ^-2 lava[level=9] keep
execute as @s[tag=tsunami_l] run fill ^1 ^-1 ^-2 ^1 ^4 ^-2 lava[level=9] keep
execute as @s[tag=tsunami_l] run fill ^ ^-1 ^-2 ^ ^4 ^-2 lava[level=9] keep
tag @s add break_obsidian
tag @s add delete_blocks
execute at @s[tag=tsunami_w] unless block ~ ~-3 ~ water run setblock ^ ^.5 ^ water keep
execute at @s[tag=tsunami_l] unless block ~ ~-3 ~ lava run setblock ^ ^.5 ^ lava keep
execute at @s[tag=thru2,tag=tsunami_w] unless block ~ ~-3 ~ water run setblock ^1 ^1.5 ^ water keep
execute at @s[tag=thru2,tag=tsunami_w] unless block ~ ~-3 ~ water run setblock ^-1 ^1.5 ^ water keep
execute at @s[tag=thru2,tag=tsunami_l] unless block ~ ~-3 ~ water run setblock ^1 ^1.5 ^ lava keep
execute at @s[tag=thru2,tag=tsunami_l] unless block ~ ~-3 ~ water run setblock ^-1 ^1.5 ^ lava keep
execute at @s run function custom:break_blocks
execute at @s positioned ~ ~-1 ~ run function custom:break_blocks
execute at @s positioned ^1 ^-1 ^ run function custom:break_blocks
execute at @s positioned ^-1 ^-1 ^ run function custom:break_blocks
execute at @s positioned ^1 ^-1 ^1 run function custom:break_blocks
execute at @s positioned ^-1 ^-1 ^1 run function custom:break_blocks
execute at @s positioned ^1 ^ ^ run function custom:break_blocks
execute at @s positioned ^-1 ^ ^ run function custom:break_blocks
execute at @s unless entity @e[type=falling_block,distance=..5,limit=1] positioned ~ ~1.5 ~ run function custom:tornado_ultralight
fill ~-.9 ~-.9 ~-.9 ~.9 ~.9 ~.9 fire keep
execute positioned ^ ^ ^-3 unless block ~ ~-2 ~ water run setblock ~ ~-.5 ~ lava[level=3] keep
fill ~-3 ~-1 ~-3 ~3 ~5 ~3 dirt replace #dirt_like