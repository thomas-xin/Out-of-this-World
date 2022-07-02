# 1 1 1

execute if score @s var0 matches ..0 run scoreboard players set @s var1 1
execute if score @s var0 matches 1 run scoreboard players set @s var1 2
execute if score @s var0 matches 2 run scoreboard players set @s var1 3
execute if score @s var0 matches 3.. run tag @s add cs_max

scoreboard players set @s[tag=max] var0 3

execute if score @s var1 > @s var2 run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ 1 1.25
execute if score @s var1 < @s var2 run playsound minecraft:block.conduit.deactivate ambient @a ~ ~ ~ 1 1.25

execute store result score @s var2 run scoreboard players get @s var0

execute if score @s var1 matches 2 run scoreboard players remove @s var2 1
execute if score @s var1 matches 3 run scoreboard players remove @s var2 2

scoreboard players operation @s var2 *= __-25__ var0
execute if score @s var1 matches 1 run scoreboard players set @s var3 1
execute if score @s var1 matches 2 run scoreboard players set @s var3 1
execute if score @s var1 matches 3 run scoreboard players set @s var3 1
scoreboard players operation @s var2 /= @s var3
scoreboard players add @s var2 25