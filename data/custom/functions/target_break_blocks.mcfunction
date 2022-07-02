execute unless block ~ ~ ~ #custom:fragile unless block ~ ~ ~ #custom:soft run scoreboard players add @s[tag=thru,scores={var3=6..}] var3 2
execute if block ~ ~ ~ #custom:hard run scoreboard players add @s[tag=thru,scores={var3=6..}] var3 7
execute if block ~ ~ ~ #custom:indestructible run scoreboard players add @s[tag=thru] var3 96

execute if entity @s[tag=break_obsidian] unless block ~ ~ ~ #custom:indestructible run function custom:break_block
execute if entity @s[tag=break_stone,tag=!break_obsidian] unless block ~ ~ ~ #custom:indestructible unless block ~ ~ ~ #custom:hard run function custom:break_block
execute if entity @s[tag=!break_stone] run function custom:break_block_basic

execute if entity @s[tag=silk_blocks,tag=!silked] as @e[type=item,distance=..3] run data merge entity @s {Health:80}
execute if entity @s[tag=silk_blocks,tag=!silked] run tag @s add silked