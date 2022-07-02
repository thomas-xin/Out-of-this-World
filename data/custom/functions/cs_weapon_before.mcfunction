tag @s remove snake
tag @s remove polar_star
tag @s remove fireball
tag @s remove machine_gun
tag @s remove missile_launcher
tag @s remove bubbler
tag @s remove blade
tag @s remove super_missile_launcher
tag @s remove nemesis
tag @s remove spur

tag @s remove level_1
tag @s remove level_2
tag @s remove level_3

execute if entity @s[gamemode=!creative,gamemode=!spectator] unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run function custom:level_up_0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] unless entity @s[nbt={SelectedItem:{tag:{HideFlags:0}}}] run function custom:level_up_1

execute as @s[scores={cs_delay=2..},gamemode=!creative,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{HideFlags:13}}}] run scoreboard players reset @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{HideFlags:7}}}] cs_weapons
scoreboard players set @s[scores={cs_weapons=1..},gamemode=!creative] cs_weapons 1
scoreboard players remove @s[scores={cs_delay=-3..}] cs_delay 1

execute as @s[scores={cs_weapons=1..}] run function custom:fire_weapon