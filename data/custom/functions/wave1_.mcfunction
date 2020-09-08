particle sweep_attack ~ ~ ~ 1 .5 1 1 1 force
effect give @a[distance=..4] instant_damage 1 0
effect give @e[tag=basic,distance=..4] instant_damage 1 0
effect give @e[tag=undead,distance=..4] instant_health 1 0
execute as @e[type=wither,tag=!wither_main,tag=!minion,distance=..6] run data merge entity @s {ActiveEffects:[{Id:6,Amplifier:0,Duration:5}]}
execute positioned ^ ^ ^-3 run fill ~-1 ~ ~-1 ~1 ~3 ~1 air replace #impermeable
execute at @s[tag=!tsunami_w] positioned ^ ^ ^-3 run fill ~ ~ ~ ~ ~1 ~ air replace water
tag @s remove break_stone
tag @s remove delete_blocks
execute at @s[tag=thru2] run function custom:break_blocks
kill @s[scores={e_check=28..}]