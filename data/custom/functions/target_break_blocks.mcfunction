execute if block ~ ~ ~ obsidian run scoreboard players add @s[tag=thru] var3 7
execute if block ~ ~ ~ crying_obsidian run scoreboard players add @s[tag=thru] var3 7
execute if block ~ ~ ~ netherite_block run scoreboard players add @s[tag=thru] var3 7
execute if block ~ ~ ~ ancient_debris run scoreboard players add @s[tag=thru] var3 7
execute unless block ~ ~ ~ #small_flowers unless block ~ ~ ~ #leaves unless block ~ ~ ~ snow unless block ~ ~ ~ #impermeable unless block ~ ~ ~ #ice unless block ~ ~ ~ #underwater_bonemeals unless block ~ ~ ~ #carpets run scoreboard players add @s[tag=thru,scores={var3=6..}] var3 3
execute if block ~ ~ ~ #wither_immune run scoreboard players add @s[tag=thru] var3 96
execute if entity @s[tag=break_obsidian] unless block ~ ~ ~ #wither_immune run function custom:break_block
execute if entity @s[tag=break_stone,tag=!break_obsidian] unless block ~ ~ ~ #wither_immune unless block ~ ~ ~ obsidian unless block ~ ~ ~ crying_obsidian unless block ~ ~ ~ netherite_block unless block ~ ~ ~ ancient_debris unless block ~ ~ ~ ender_chest unless block ~ ~ ~ anvil unless block ~ ~ ~ enchanting_table run function custom:break_block
execute if entity @s[tag=!break_stone] run function custom:break_block_basic
execute if entity @s[tag=silk_blocks,tag=!silked] as @e[type=item,distance=..3] run data merge entity @s {Health:80}
execute if entity @s[tag=silk_blocks,tag=!silked] run tag @s add silked