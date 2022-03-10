function custom:smudge_id_recursive
execute store result score @e[tag=smudge_boss,scores={smudge_id=-1},limit=1] smudge_id run scoreboard players get @s smudge_id
scoreboard players add @s smudge_id 1
execute if entity @e[tag=smudge_boss,scores={smudge_id=-1},limit=1] run function custom:smudge_id