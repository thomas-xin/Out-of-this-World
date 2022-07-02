execute store result score @s var0 run data get entity @s Duration
execute store result score @s var1 run data get entity @s Age
scoreboard players operation @s var0 -= @s var1
scoreboard players remove @s var0 1