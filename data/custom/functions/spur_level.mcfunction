# 40 60 200

execute if score @s var0 matches ..39 run scoreboard players set @s var1 1
execute if score @s var0 matches 40..99 run scoreboard players set @s var1 2
execute if score @s var0 matches 100.. run scoreboard players set @s var1 3
execute if score @s var0 matches 300.. run tag @s add cs_max

scoreboard players set @s[tag=cs_max] var0 300

# execute if score @s var1 > @s var2 run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ 1 1.25
# execute if score @s var1 < @s var2 run playsound minecraft:block.conduit.deactivate ambient @a ~ ~ ~ 1 1.25

execute store result score @s var2 run scoreboard players get @s var0

execute if score @s var1 matches 2 run scoreboard players remove @s var2 40
execute if score @s var1 matches 3 run scoreboard players remove @s var2 100

scoreboard players operation @s var2 *= __-25__ var0
execute if score @s var1 matches 1 run scoreboard players set @s var3 40
execute if score @s var1 matches 2 run scoreboard players set @s var3 60
execute if score @s var1 matches 3 run scoreboard players set @s var3 200
scoreboard players operation @s var2 /= @s var3
scoreboard players add @s var2 25