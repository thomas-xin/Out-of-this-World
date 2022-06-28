execute as @e[tag=smudge_boss] store result score @s compare_id run scoreboard players get @s smudge_id

execute if entity @s[scores={smudge_id=0}] run say >incorrect ID

scoreboard players operation @e[tag=smudge_boss] compare_id -= @s smudge_id

execute at @e[tag=smudge_boss,scores={compare_id=0},limit=1] run tp ~ ~ ~
execute unless entity @e[tag=smudge_boss,scores={compare_id=0},limit=1] run function custom:smudge_loot