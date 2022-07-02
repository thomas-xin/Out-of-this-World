execute if block ~ ~ ~ light[waterlogged=true] run function custom:glow_water
execute if block ~ ~ ~ water[level=0] run function custom:glow_water
execute if block ~ ~ ~ #custom:empty unless block ~ ~ ~ light[waterlogged=true] run function custom:glow_air
execute if block ~ ~ ~ light run tag @s add glowed