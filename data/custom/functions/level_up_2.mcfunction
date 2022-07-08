execute store result score @s var2 run data get entity @s SelectedItem.tag.lv
execute in overworld unless block 0 -64 0 dropper run setblock 0 -64 0 dropper[facing=down]
execute in overworld run item replace block 0 -64 0 container.0 from entity @s weapon.mainhand

tag @s remove cs_max
summon area_effect_cloud ~ ~ ~ {Duration:2147483647,UUID:[I;-172967812,-1709553493,-1696901454,1881152716]}

execute if entity @s[nbt={SelectedItem:{tag:{HideFlags:1}}}] run function custom:snake_level
execute if entity @s[nbt={SelectedItem:{tag:{HideFlags:2}}}] run function custom:polar_star_level
execute if entity @s[nbt={SelectedItem:{tag:{HideFlags:3}}}] run function custom:fireball_level
execute if entity @s[nbt={SelectedItem:{tag:{HideFlags:4}}}] run function custom:machine_gun_level
execute if entity @s[nbt={SelectedItem:{tag:{HideFlags:5}}}] run function custom:missile_launcher_level
execute if entity @s[nbt={SelectedItem:{tag:{HideFlags:7}}}] run function custom:bubbler_level
execute if entity @s[nbt={SelectedItem:{tag:{HideFlags:9}}}] run function custom:blade_level
execute if entity @s[nbt={SelectedItem:{tag:{HideFlags:10}}}] run function custom:super_missile_launcher_level
execute if entity @s[nbt={SelectedItem:{tag:{HideFlags:12}}}] run function custom:nemesis_level
execute if entity @s[nbt={SelectedItem:{tag:{HideFlags:13}}}] run function custom:spur_level

execute if score @s var3 matches 0 run scoreboard players set @s var2 0

execute unless entity @s[tag=cs_max] run data modify block 0 -64 0 Items[0].tag.Enchantments set value []
execute if entity @s[tag=cs_max] run data modify block 0 -64 0 Items[0].tag.Enchantments set value [{}]

execute if score @s var1 matches 1 in overworld run data modify block 0 -64 0 Items[0].tag.display.Lore[0] set value '{"text":"Level 1","color":"white","italic":false}'
execute if score @s var1 matches 2 run data modify block 0 -64 0 Items[0].tag.display.Lore[0] set value '{"text":"Level 2","color":"white","italic":false}'
execute if score @s var1 matches 3 in overworld run data modify block 0 -64 0 Items[0].tag.display.Lore[0] set value '{"text":"Level 3","color":"white","italic":false}'

execute store result entity f5b0b87c-9a1a-48ab-9adb-56b270201ccc DurationOnUse int 1 in overworld run scoreboard players get @s var0
data modify block 0 -64 0 Items[0].tag.xp set from entity f5b0b87c-9a1a-48ab-9adb-56b270201ccc DurationOnUse

execute store result entity f5b0b87c-9a1a-48ab-9adb-56b270201ccc DurationOnUse int 1 in overworld run scoreboard players get @s var1
data modify block 0 -64 0 Items[0].tag.lv set from entity f5b0b87c-9a1a-48ab-9adb-56b270201ccc DurationOnUse

execute store result entity f5b0b87c-9a1a-48ab-9adb-56b270201ccc DurationOnUse int 1 in overworld run scoreboard players get @s var2
data modify block 0 -64 0 Items[0].tag.Damage set from entity f5b0b87c-9a1a-48ab-9adb-56b270201ccc DurationOnUse

kill f5b0b87c-9a1a-48ab-9adb-56b270201ccc

execute in overworld run item replace entity @s weapon.mainhand from block 0 -64 0 container.0