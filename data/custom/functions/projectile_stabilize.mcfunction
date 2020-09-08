execute as @e[scores={wither_id=1..}] store result score @s compare_id run scoreboard players get @s wither_id
scoreboard players operation @e[scores={wither_id=1..}] compare_id -= @s wither_id
tp @e[tag=launch,scores={compare_id=0}] ~ ~ ~