particle sweep_attack ~ ~ ~ 1 .5 1 1 1 force
effect give @a[distance=..4] instant_damage 1 1
scoreboard players add @e[tag=basic,distance=..4] damaged 2
execute positioned ^ ^ ^-3 run fill ~-1 ~ ~-1 ~1 ~3 ~1 air replace #impermeable
tag @s remove break_stone
tag @s remove delete_blocks
execute at @s[tag=thru2] run function custom:break_blocks
execute at @s[tag=thru2] run setblock ~ ~ ~ fire keep
kill @s[scores={e_check=32..}]