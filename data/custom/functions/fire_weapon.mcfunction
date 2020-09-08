tag @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{HideFlags:1}}},scores={cs_weapons=1..}] add snake
tag @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{HideFlags:2}}},scores={cs_weapons=1..}] add polar_star
tag @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{HideFlags:3}}},scores={cs_weapons=1..}] add fireball
tag @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{HideFlags:4}}},scores={cs_weapons=1..}] add machine_gun
tag @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{HideFlags:5}}},scores={cs_weapons=1..}] add missile_launcher
tag @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{HideFlags:7}}},scores={cs_weapons=1..}] add bubbler
tag @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{HideFlags:9}}},scores={cs_weapons=1..}] add blade
tag @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{HideFlags:10}}},scores={cs_weapons=1..}] add super_missile_launcher
tag @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{HideFlags:12}}},scores={cs_weapons=1..}] add nemesis
tag @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{HideFlags:13}}},scores={cs_weapons=1..}] add spur

tag @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{level:1}}},scores={cs_weapons=1..}] add level_1
tag @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{level:2}}},scores={cs_weapons=1..}] add level_2
tag @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{level:3}}},scores={cs_weapons=1..}] add level_3

execute at @s[tag=snake] run function custom:snake
execute at @s[tag=polar_star] run function custom:polar_star
execute at @s[tag=fireball] run function custom:fireball
execute at @s[tag=machine_gun] run function custom:machine_gun
execute at @s[tag=missile_launcher] run function custom:missile_launcher
execute at @s[tag=bubbler] run function custom:bubbler
execute at @s[tag=blade] run function custom:blade
execute at @s[tag=super_missile_launcher] run function custom:super_missile_launcher
execute at @s[tag=nemesis] run function custom:nemesis
execute at @s[tag=spur] run function custom:spur