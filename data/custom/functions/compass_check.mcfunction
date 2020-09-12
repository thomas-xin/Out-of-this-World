execute store result score __temp__ var0 run data get entity @s Health 1
execute if score __temp__ var0 = __1__ var0 run tag @s add valid_comp
execute if entity @s[tag=!valid_comp] run function custom:compass_lodestone