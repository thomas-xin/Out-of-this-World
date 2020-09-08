execute as @e[scores={wither_id=1..}] store result score @s compare_id run scoreboard players get @s wither_id
scoreboard players operation @e[scores={wither_id=1..}] compare_id -= @s wither_id
tp @e[tag=minion,scores={compare_id=0},sort=nearest,limit=1] @s