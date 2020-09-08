playsound minecraft:entity.wither.break_block ambient @a ~ ~ ~ .2 0.8
execute if entity @s[tag=silk_blocks] run function custom:silk_block
execute if entity @s[tag=delete_blocks] run setblock ~ ~ ~ air replace
execute if entity @s[tag=!delete_blocks] unless block ~ ~ ~ air run setblock ~ ~ ~ air destroy