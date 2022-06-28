scoreboard players add __global_delay__ var0 1
execute if score __global_delay__ var0 matches 32.. run scoreboard players set __global_delay__ var0 0
scoreboard players add __slow_loop__ var0 1
execute if score __slow_loop__ var0 matches 128.. run scoreboard players set __slow_loop__ var0 0
scoreboard players add __fast_loop__ var0 1
execute if score __fast_loop__ var0 matches 8.. run scoreboard players set __fast_loop__ var0 0

execute if score __fast_loop__ var0 matches 4 run function custom:entity_scan_s

summon area_effect_cloud 0 0 0 {Tags:["blow_centre"],Duration:33}
execute positioned 0 0 0 run tp @e[distance=..1,tag=blow_centre,sort=random,limit=16] ~ ~ ~ ~7 0
execute positioned 0 0 0 run tp @e[distance=..1,tag=blow_centre,sort=random,limit=16] ~ ~ ~ ~-23 0

summon area_effect_cloud 0 0 0 {Tags:["blow"],Duration:33}
execute positioned 0 0 0 at @e[distance=..1,tag=blow_centre,sort=random,limit=3] as @e[distance=..1,tag=blow,sort=random,limit=1] run tp @s ^ ^ ^16 ~ ~

execute as @e[tag=fire_trail] at @s run function custom:projectile_trail2
execute as @e[tag=fireball_check] at @s run function custom:projectile_explode
execute at @e[type=fireball,tag=fire_trail] positioned ^ ^ ^6 run summon area_effect_cloud ~ ~ ~ {Duration:3,Tags:["f_proj","fireball_check"]}
execute at @e[type=dragon_fireball,tag=fire_trail] positioned ^ ^ ^6 run summon area_effect_cloud ~ ~ ~ {Duration:3,Tags:["d_proj","fireball_check"]}

execute as @e[type=!item] at @s run function custom:entity_scan_1

execute if entity @e[tag=tornado,limit=1] as @e at @s run function custom:tornado_main
execute unless entity @e[tag=tornado,limit=1] as @e[tag=falling] unless entity @s[nbt={OnGround:0b}] run tag @s remove falling
execute if entity @e[tag=tornado,limit=1] run function custom:tornado_effect
execute in overworld positioned 0 0 0 unless entity @e[tag=wind,distance=...1] run summon armor_stand 0 0 0 {Invisible:1b,Invulnerable:1b,Tags:["wind"]}

execute if entity @e[tag=wither_load] run function custom:wither_loop

execute as @a at @s run function custom:player_entity

execute as @e[tag=wind,sort=random,limit=1] at @s run function custom:windrandomizer
execute as @e[type=!item] at @s run function custom:entity_scan_2

execute if score __global_delay__ var0 matches 0 at @e[tag=tornado] run tag @e[tag=none,distance=..4,limit=1,sort=random] add scatter
execute if score __global_delay__ var0 matches 0 run tag @e[tag=scatter] remove none

execute as @a at @s run function custom:cs_weapon_after

execute positioned 0 0 0 unless entity @e[tag=cs_rando,distance=...1,limit=1] run function custom:rando_set

execute as @e[tag=cs_rando,sort=random,limit=1] run function custom:rando_position

# execute as @e[type=end_crystal] at @s positioned ~ ~-1 ~ if block ^ ^ ^ dispenser run function custom:craft
execute if entity @e[tag=tracked,limit=1] as @e[type=item,nbt={Item:{tag:{HideFlags:40}}}] at @s at @p run function custom:compass_check

execute if score __slow_loop__ var0 matches 0 if score __entities__ var0 matches 1536.. run kill @e[type=item]
execute if score __global_delay__ var0 matches 0 if score __entities__ var0 matches 1024.. run kill @e[type=item,sort=random,limit=128]
execute if score __fast_loop__ var0 matches 0 if score __entities__ var0 matches 768.. run kill @e[type=item,sort=random,limit=32]

execute if score __slow_loop__ var0 matches 64 positioned 0 0 0 run function custom:generatestructures