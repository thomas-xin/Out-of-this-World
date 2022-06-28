execute as @e[tag=wither_sprite] store result score @s compare_id run scoreboard players get @s wither_id
scoreboard players operation @e[tag=wither_sprite] compare_id -= @s wither_id

execute as @e[tag=wither_sprite,scores={compare_id=0}] run tp @s ~ ~-5 ~ ~180 0

function custom:wither_orbit