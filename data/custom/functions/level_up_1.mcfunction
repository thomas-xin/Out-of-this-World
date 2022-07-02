execute store result score @s var0 run data get entity @s SelectedItem.tag.xp
execute store result score @s var1 run scoreboard players get @s var0

execute store result score @s var2 run scoreboard players get @s damage_taken
scoreboard players operation @s var2 /= __5__ var0
scoreboard players operation @s var0 -= @s var2

scoreboard players operation @s var0 += @s curr_xp
scoreboard players operation @s var0 -= @s prev_xp

scoreboard players set @s[scores={var0=..-1}] var0 0
execute if entity @s[nbt={SelectedItem:{tag:{HideFlags:13}}}] store result score @s var0 run scoreboard players get @s spur_charge
execute unless score @s var0 = @s var1 run function custom:level_up_2