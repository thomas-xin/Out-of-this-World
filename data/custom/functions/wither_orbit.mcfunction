execute as @e[scores={wither_id=1..}] store result score @s compare_id run scoreboard players get @s wither_id
scoreboard players operation @e[scores={wither_id=1..}] compare_id -= @s wither_id

execute as @e[tag=wither_orbit,scores={compare_id=0}] run tp @s ~ ~ ~