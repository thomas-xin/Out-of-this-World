particle explosion_emitter ~ ~ ~ 1 .5 1 1 1 force
effect give @a[distance=..6] instant_damage 4 4
effect give @e[tag=basic,distance=..5] instant_damage 4 4
effect give @e[tag=undead,distance=..5] instant_health 4 4
execute as @e[type=wither,distance=..7] run data merge entity @s {ActiveEffects:[{Id:6,Amplifier:4,Duration:5}]}
execute at @e[type=ender_dragon,distance=..8] run summon creeper ~ ~ ~ {Fuse:0,Invulnerable:1,ExplosionRadius:6,powered:1}
execute positioned ^ ^ ^-4 run fill ~-3 ~ ~-3 ~3 ~7 ~3 air replace #impermeable
execute as @s[tag=!tsunami_w] positioned ^ ^ ^-4 run fill ~-2.5 ~ ~-2.5 ~2.5 ~6 ~2.5 air replace water
execute as @s[tag=tsunami_w] run fill ^-1 ^-1 ^-2 ^-1 ^5 ^-2 water[level=9] keep
execute as @s[tag=tsunami_w] run fill ^1 ^-1 ^-2 ^1 ^5 ^-2 water[level=9] keep
execute as @s[tag=tsunami_w] run fill ^ ^-1 ^-2 ^ ^5 ^-2 water[level=9] keep
execute as @s[tag=!tsunami_l] positioned ^ ^ ^-4 run fill ~-2.5 ~ ~-2.5 ~2.5 ~6 ~2.5 air replace lava
execute as @s[tag=tsunami_l] run fill ^-1 ^-1 ^-2 ^-1 ^5 ^-2 lava[level=9] keep
execute as @s[tag=tsunami_l] run fill ^1 ^-1 ^-2 ^1 ^5 ^-2 lava[level=9] keep
execute as @s[tag=tsunami_l] run fill ^ ^-1 ^-2 ^ ^5 ^-2 lava[level=9] keep
tag @s add break_obsidian
tag @s add delete_blocks
execute at @s[tag=tsunami_w] unless block ~ ~-3 ~ water run setblock ^-1 ^.5 ^1 water keep
execute at @s[tag=tsunami_l] unless block ~ ~-3 ~ lava run setblock ^-1 ^.5 ^1 lava keep
execute at @s[tag=tsunami_w] unless block ~ ~-3 ~ water run setblock ^1 ^.5 ^1 water keep
execute at @s[tag=tsunami_l] unless block ~ ~-3 ~ lava run setblock ^1 ^.5 ^1 lava keep
execute at @s[tag=tsunami_w] unless block ~ ~-3 ~ water run setblock ^1 ^1.5 ^ water keep
execute at @s[tag=tsunami_w] unless block ~ ~-3 ~ water run setblock ^-1 ^1.5 ^ water keep
execute at @s[tag=tsunami_l] unless block ~ ~-3 ~ water run setblock ^1 ^1.5 ^ lava keep
execute at @s[tag=tsunami_l] unless block ~ ~-3 ~ water run setblock ^-1 ^1.5 ^ lava keep
execute at @s run function custom:break_blocks
execute at @s positioned ~ ~-1 ~ run function custom:break_blocks
execute at @s positioned ^1 ^-1 ^ run function custom:break_blocks
execute at @s positioned ^-1 ^-1 ^ run function custom:break_blocks
execute at @s positioned ^1 ^-1 ^1 run function custom:break_blocks
execute at @s positioned ^-1 ^-1 ^1 run function custom:break_blocks
execute at @s positioned ^1 ^-1 ^2 run function custom:break_blocks
execute at @s positioned ^-1 ^-1 ^2 run function custom:break_blocks
execute at @s positioned ^1 ^ ^ run function custom:tiny_explode
execute at @s positioned ^-1 ^ ^ run function custom:tiny_explode
scoreboard players add @s spur_charge 1
execute at @s unless entity @e[type=falling_block,distance=..4,limit=1] positioned ~ ~1.5 ~ run function custom:tornado_ultralight
execute at @s[scores={spur_charge=4}] unless block ~ ~4 ~ air unless entity @e[type=falling_block,distance=..5,limit=1] run summon area_effect_cloud ~ ~2 ~ {Duration:2,Tags:["launch_blocks"]}
scoreboard players reset @s[scores={spur_charge=4..,e_check=..20}] spur_charge
execute positioned ^ ^ ^-3 unless block ~ ~-2 ~ water run fill ~-.5 ~-1 ~-.5 ~.5 ~ ~.5 lava[level=9] keep
fill ~-3 ~-1 ~-3 ~3 ~5 ~3 coarse_dirt replace #dirt_like