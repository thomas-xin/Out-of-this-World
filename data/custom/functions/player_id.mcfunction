scoreboard players add @s player_id 1
execute as @a[tag=assigned] store result score @s compare_id run scoreboard players get @s player_id
scoreboard players operation @a[tag=assigned] compare_id -= @s player_id
execute if entity @a[tag=assigned,scores={compare_id=0}] run function custom:player_id
execute store result score @a[scores={player_id=-1},limit=1] player_id run scoreboard players get @s player_id
execute unless entity @a[scores={player_id=-1},limit=1] run scoreboard players set @s player_id -1
execute as @s[scores={player_id=0..}] run function custom:player_id