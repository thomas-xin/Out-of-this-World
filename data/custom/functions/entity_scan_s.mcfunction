function custom:count_entities
execute if score __entities__ var0 >= __16384__ var0 run kill @e[type=!player,tag=!instakill_immune]

execute as @e[type=end_crystal,tag=!spin_crystal,tag=!perma_crystal] at @s positioned ~ ~ ~ run function custom:wither_summon