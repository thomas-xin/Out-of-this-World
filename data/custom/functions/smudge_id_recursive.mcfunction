scoreboard players add @s smudge_id 1
execute as @e[tag=smudge_boss,tag=assigned] store result score @s compare_id run scoreboard players get @s smudge_id
scoreboard players operation @e[tag=smudge_boss,tag=assigned] compare_id -= @s smudge_id
execute if entity @e[tag=smudge_boss,tag=assigned,scores={compare_id=0},limit=1] run function custom:smudge_id_recursive
execute if entity @e[tag=smudge_boss,tag=assigned,scores={compare_id=32768},limit=1] run function custom:smudge_id_recursive