scoreboard players add @s wither_id 1
execute as @e[tag=wither_load,tag=assigned] store result score @s compare_id run scoreboard players get @s wither_id
scoreboard players operation @e[tag=wither_load,tag=assigned] compare_id -= @s wither_id
execute if entity @e[tag=wither_load,tag=assigned,scores={compare_id=0},limit=1] run function custom:wither_id_recursive
execute if entity @e[tag=wither_load,tag=assigned,scores={compare_id=32768},limit=1] run function custom:wither_id_recursive