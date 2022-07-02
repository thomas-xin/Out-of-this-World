scoreboard players add @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{HideFlags:13}}},scores={cs_delay=1..}] spur_charge 5
execute at @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{HideFlags:13}}},scores={cs_delay=..-4,spur_charge=40..}] run function custom:spur3

scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{HideFlags:7}}},scores={cs_delay=1..}] spur_charge 1
execute at @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{HideFlags:7}}},scores={cs_delay=..-4,spur_charge=1..}] run function custom:kill_same_bullets

scoreboard players reset @s[scores={cs_delay=..-4}] spur_charge
execute as @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{HideFlags:13}}}] run scoreboard players reset @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{HideFlags:7}}}] spur_charge

execute at @s[scores={spur_charge=1..}] run function custom:spur_charge

scoreboard players remove @s[scores={cs_weapons=1..}] cs_weapons 1

execute store result score @s prev_xp run scoreboard players get @s curr_xp
scoreboard players reset @s damage_taken