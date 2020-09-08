function custom:wither_id_recursive
#execute as @e[tag=wither_load,scores={wither_id=-1},limit=1] run tell @a fuck
execute store result score @e[tag=wither_load,scores={wither_id=-1},limit=1] wither_id run scoreboard players get @s wither_id
execute store result score @a wither_id run scoreboard players get @s wither_id
scoreboard players add @s wither_id 1
execute if entity @e[tag=wither_load,scores={wither_id=-1},limit=1] run function custom:wither_id