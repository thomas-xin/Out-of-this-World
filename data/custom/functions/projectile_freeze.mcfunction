execute at @s positioned ~ ~-2 ~ run effect give @e[distance=..11,tag=living] instant_damage 80
execute at @s positioned ~ ~-2 ~ run effect give @e[distance=..11,tag=undead] instant_health 80
execute at @s positioned ~ ~-2 ~ run effect give @e[distance=..11] slowness 12 16
execute at @s positioned ~ ~-2 ~ run effect give @e[distance=..11] mining_fatigue 12 16
execute at @s positioned ~ ~-2 ~ run effect give @e[distance=..11] weakness 12 16
effect give @a[distance=..8] levitation 1
tag @e[distance=..12,type=!area_effect_cloud,type=!armor_stand,type=!end_crystal,type=!wither,type=!ender_dragon,type=!trident,type=!arrow,type=!fireball,type=!dragon_fireball,type=!wither_skull,type=!falling_block] add pulled
execute at @e[tag=pulled] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["f_pull"]}
execute at @s run tp @e[tag=f_pull] ^ ^ ^ facing entity @s
execute as @e[tag=pulled] at @e[tag=f_pull,sort=nearest,limit=1] run tp @s ^ ^ ^0.1
kill @e[tag=f_pull]
summon area_effect_cloud ~ ~5 ~ {Duration:2,Tags:["randomX"]}
summon area_effect_cloud ~ ~-5 ~ {Duration:2,Tags:["randomX"]}
summon area_effect_cloud ~5 ~ ~ {Duration:2,Tags:["randomX"]}
summon area_effect_cloud ~-5 ~ ~ {Duration:2,Tags:["randomX"]}
summon area_effect_cloud ~ ~ ~5 {Duration:2,Tags:["randomX"]}
summon area_effect_cloud ~ ~ ~-5 {Duration:2,Tags:["randomX"]}
summon area_effect_cloud ~3 ~3 ~3 {Duration:2,Tags:["randomX"]}
summon area_effect_cloud ~3 ~3 ~-3 {Duration:2,Tags:["randomX"]}
summon area_effect_cloud ~-3 ~3 ~3 {Duration:2,Tags:["randomX"]}
summon area_effect_cloud ~-3 ~3 ~-3 {Duration:2,Tags:["randomX"]}
summon area_effect_cloud ~3 ~-3 ~3 {Duration:2,Tags:["randomX"]}
summon area_effect_cloud ~3 ~-3 ~-3 {Duration:2,Tags:["randomX"]}
summon area_effect_cloud ~-3 ~-3 ~3 {Duration:2,Tags:["randomX"]}
summon area_effect_cloud ~-3 ~-3 ~-3 {Duration:2,Tags:["randomX"]}
tag @e[tag=pulled] remove pulled
tag @e[tag=randomX,sort=random,limit=1] add selected
execute at @e[tag=selected] run function custom:icefall
kill @e[tag=randomX]

execute at @e[tag=projectile_freeze] positioned ~ ~2 ~ run particle item_snowball ~ ~ ~ 6 6 6 0.1 64 force
execute at @e[tag=projectile_freeze] positioned ~ ~2 ~ run particle end_rod ~ ~ ~ 4 4 4 0.1 96 force