execute unless entity @s[tag=silk_blocks] run playsound minecraft:entity.wither.break_block player @a ~ ~ ~ .2 0.8
execute if entity @s[tag=silk_blocks] run playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ .2 0.8
execute if entity @s[tag=delete_blocks] run setblock ~ ~ ~ air replace
execute if entity @s[tag=silk_blocks,tag=!delete_blocks] run function custom:silk_block
execute if entity @s[tag=!delete_blocks] unless block ~ ~ ~ #custom:empty run setblock ~ ~ ~ air destroy