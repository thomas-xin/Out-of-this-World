function custom:count_entities
execute if score __entities__ var0 >= __16384__ var0 run kill @e[type=!player]

execute as @e[type=end_crystal,tag=!spin_crystal,tag=!perma_crystal] at @s positioned ~ ~ ~ run function custom:wither_summon

forceload remove all
forceload add -32 -32 32 32