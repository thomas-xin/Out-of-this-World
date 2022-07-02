tag @s[nbt={SelectedItem:{tag:{HideFlags:1}}}] add snake
tag @s[nbt={SelectedItem:{tag:{HideFlags:2}}}] add polar_star
tag @s[nbt={SelectedItem:{tag:{HideFlags:3}}}] add fireball
tag @s[nbt={SelectedItem:{tag:{HideFlags:4}}}] add machine_gun
tag @s[nbt={SelectedItem:{tag:{HideFlags:5}}}] add missile_launcher
tag @s[nbt={SelectedItem:{tag:{HideFlags:7}}}] add bubbler
tag @s[nbt={SelectedItem:{tag:{HideFlags:9}}}] add blade
tag @s[nbt={SelectedItem:{tag:{HideFlags:10}}}] add super_missile_launcher
tag @s[nbt={SelectedItem:{tag:{HideFlags:12}}}] add nemesis
tag @s[nbt={SelectedItem:{tag:{HideFlags:13}}}] add spur

tag @s[nbt={SelectedItem:{tag:{lv:1}}}] add level_1
tag @s[nbt={SelectedItem:{tag:{lv:2}}}] add level_2
tag @s[nbt={SelectedItem:{tag:{lv:3}}}] add level_3

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