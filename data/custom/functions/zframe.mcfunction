execute positioned 0 -64 0 unless entity @e[tag=angle,distance=...1] run function custom:world_init

execute as @e[tag=angle,limit=1] run function custom:count_entities
execute if score __entities__ var0 >= __16384__ var0 run kill @e[type=!player]

gamerule commandBlockOutput false

summon area_effect_cloud 0 0 0 {Tags:["blow_centre"],Duration:32}
tp @e[tag=blow_centre,sort=random,limit=16] ~ ~ ~ ~7 0
tp @e[tag=blow_centre,sort=random,limit=16] ~ ~ ~ ~-23 0
execute as @e at @s run function custom:entity_scan_1

execute if entity @e[tag=tornado,limit=1] as @e at @s run function custom:tornado_main
execute unless entity @e[tag=tornado,limit=1] as @e[tag=falling] unless entity @s[nbt={OnGround:0b}] run tag @s remove falling
execute if entity @e[tag=tornado,limit=1] run function custom:tornado_effect
execute in overworld positioned 0 0 0 unless entity @e[tag=wind,distance=...1] run summon armor_stand 0 0 0 {Invisible:1b,Invulnerable:1b,Tags:["wind"]}

execute if entity @e[tag=wither_load] run function custom:wither_loop

execute as @a at @s run function custom:player_entity

execute as @e[tag=wind,sort=random,limit=1] at @s run function custom:windrandomizer
execute as @e at @s run function custom:entity_scan_2

execute unless entity @e[tag=global_delay,limit=1] at @e[tag=tornado] run tag @e[tag=none,distance=..4,limit=1,sort=random] add scatter
execute unless entity @e[tag=global_delay,limit=1] run tag @e[tag=scatter] remove none

execute as @a at @s run function custom:cs_weapon_after

execute in overworld positioned 0 0 0 unless entity @e[tag=rand_end,distance=...1,limit=1] run function custom:rando_set
execute in the_nether positioned 0 0 0 unless entity @e[tag=rand_end,distance=...1,limit=1] run function custom:rando_set
execute in the_end positioned 0 0 0 unless entity @e[tag=rand_end,distance=...1,limit=1] run function custom:rando_set

execute as @e[tag=cs_rando,sort=random,limit=1] run function custom:rando_position

# execute as @e[type=end_crystal] at @s positioned ~ ~-1 ~ if block ^ ^ ^ dispenser run function custom:craft
execute if entity @e[tag=tracked,limit=1] as @e[type=item,nbt={Item:{tag:{HideFlags:40}}}] at @s at @p run function custom:compass_check

execute unless entity @e[tag=fast_loop,limit=1] if score __entities__ var0 >= __2048__ var0 run kill @e[type=item]
execute unless entity @e[tag=fast_loop,limit=1] if score __entities__ var0 >= __1024__ var0 run kill @e[type=item,sort=random,limit=64]

execute at @r unless entity @e[tag=global_delay,limit=1] run summon area_effect_cloud ~ 0 ~ {Duration:20,Tags:["global_delay"]}

execute positioned 0 0 0 if entity @e[tag=slow_loop,distance=...1,limit=1,nbt={Age:1}] run function custom:generatestructures

execute unless entity @e[tag=slow_loop,limit=1] run summon area_effect_cloud 0 0 0 {Duration:128,Tags:["slow_loop"]}
execute unless entity @e[tag=fast_loop,limit=1] run summon area_effect_cloud 0 0 0 {Duration:8,Tags:["fast_loop"]}