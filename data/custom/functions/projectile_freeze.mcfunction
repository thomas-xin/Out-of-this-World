execute at @s positioned ~ ~-2 ~ run effect give @e[distance=..11,type=#custom:living] instant_damage 80
execute at @s positioned ~ ~-2 ~ run effect give @e[distance=..11,type=#custom:undead] instant_health 80
execute at @s positioned ~ ~-2 ~ run effect give @e[distance=..11] slowness 12 16
execute at @s positioned ~ ~-2 ~ run effect give @a[distance=..11] mining_fatigue 12 16
execute at @s positioned ~ ~-2 ~ run effect give @e[distance=..11,type=#custom:living] weakness 12 16
effect give @a[distance=..8] levitation 1
tag @e[distance=..12,type=#custom:killable] add pulled
execute at @e[tag=pulled] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["f_pull"]}
execute at @s run tp @e[tag=f_pull] ^ ^ ^ facing entity @s
execute as @e[tag=pulled] at @e[tag=f_pull,sort=nearest,limit=1] run tp @s ^ ^ ^0.1
kill @e[tag=f_pull]

execute unless entity @s[tag=used] run summon area_effect_cloud ~ ~5 ~ {Duration:2,Tags:["randomX"]}
execute unless entity @s[tag=used] run summon area_effect_cloud ~ ~-5 ~ {Duration:2,Tags:["randomX"]}
execute unless entity @s[tag=used] run summon area_effect_cloud ~5 ~ ~ {Duration:2,Tags:["randomX"]}
execute unless entity @s[tag=used] run summon area_effect_cloud ~-5 ~ ~ {Duration:2,Tags:["randomX"]}
execute unless entity @s[tag=used] run summon area_effect_cloud ~ ~ ~5 {Duration:2,Tags:["randomX"]}
execute unless entity @s[tag=used] run summon area_effect_cloud ~ ~ ~-5 {Duration:2,Tags:["randomX"]}
execute unless entity @s[tag=used] run summon area_effect_cloud ~3 ~3 ~3 {Duration:2,Tags:["randomX"]}
execute unless entity @s[tag=used] run summon area_effect_cloud ~3 ~3 ~-3 {Duration:2,Tags:["randomX"]}
execute unless entity @s[tag=used] run summon area_effect_cloud ~-3 ~3 ~3 {Duration:2,Tags:["randomX"]}
execute unless entity @s[tag=used] run summon area_effect_cloud ~-3 ~3 ~-3 {Duration:2,Tags:["randomX"]}
execute unless entity @s[tag=used] run summon area_effect_cloud ~3 ~-3 ~3 {Duration:2,Tags:["randomX"]}
execute unless entity @s[tag=used] run summon area_effect_cloud ~3 ~-3 ~-3 {Duration:2,Tags:["randomX"]}
execute unless entity @s[tag=used] run summon area_effect_cloud ~-3 ~-3 ~3 {Duration:2,Tags:["randomX"]}
execute unless entity @s[tag=used] run summon area_effect_cloud ~-3 ~-3 ~-3 {Duration:2,Tags:["randomX"]}
execute unless entity @s[tag=used] run tag @e[tag=pulled] remove pulled
execute unless entity @s[tag=used] run tag @e[tag=randomX,sort=random,limit=1] add selected
execute unless entity @s[tag=used] at @e[tag=selected] run function custom:icefall
execute unless entity @s[tag=used] run kill @e[tag=randomX]
tag @s[tag=!used] add used

execute at @e[tag=projectile_freeze] positioned ~ ~2 ~ run particle item_snowball ~ ~ ~ 6 6 6 0.1 64 force
execute at @e[tag=projectile_freeze] positioned ~ ~2 ~ run particle end_rod ~ ~ ~ 4 4 4 0.1 96 force

summon area_effect_cloud ~ ~ ~ {Tags:["spiral_up","selected"],Duration:30}
tp @e[tag=selected,distance=..1,limit=1] ~ ~-1 ~ ~ ~
tag @e[tag=selected] remove selected
tp @s ~ ~.25 ~ ~6 ~