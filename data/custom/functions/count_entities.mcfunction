scoreboard players set __entities__ var0 0
execute at @e[type=!player,tag=!instakill_immune] run scoreboard players add __entities__ var0 1
execute store result score __entities__ count run scoreboard players get __entities__ var0

scoreboard players set __items__ var0 0
execute at @e[type=item,tag=!instakill_immune] run scoreboard players add __items__ var0 1
execute store result score __items__ count run scoreboard players get __items__ var0