scoreboard players reset @s var0
execute store result score @s var0 run scoreboard players get @s player_id
scoreboard players operation @s var0 -= @e[tag=player_assign,distance=..8,sort=nearest,limit=1] player_id
execute unless entity @s[scores={var0=0}] if entity @e[tag=player_assign,distance=..8,sort=nearest,limit=1] run function custom:player_damaged
scoreboard players reset @s var1