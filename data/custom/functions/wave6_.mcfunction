particle explosion ~ ~ ~ 1 .5 1 1 1 force
effect give @a[distance=..4] instant_damage 3 3
effect give @e[tag=basic,distance=..4] instant_damage 3 3
effect give @e[tag=undead,distance=..4] instant_health 3 3
execute as @e[type=wither,distance=..6] run data merge entity @s {ActiveEffects:[{Id:6,Amplifier:3,Duration:5}]}
execute at @e[type=ender_dragon,distance=..5] run summon creeper ~ ~ ~ {Fuse:0,Invulnerable:1,ExplosionRadius:4,powered:1}
execute positioned ^ ^ ^-3 run fill ~-2 ~ ~-2 ~2 ~5 ~2 air replace #impermeable
execute as @s[tag=!tsunami_w] positioned ^ ^ ^-3 run fill ~-2 ~ ~-2 ~2 ~5 ~2 air replace water
execute as @s[tag=tsunami_w] run fill ^-.5 ^-1 ^-2 ^-.5 ^2 ^-2 water[level=9] keep
execute as @s[tag=tsunami_w] run fill ^.5 ^-1 ^-2 ^.5 ^2 ^-2 water[level=9] keep
execute as @s[tag=!tsunami_l] positioned ^ ^ ^-3 run fill ~-2 ~ ~-2 ~2 ~5 ~2 air replace lava
execute as @s[tag=tsunami_l] run fill ^-.5 ^-1 ^-2 ^-.5 ^2 ^-2 lava[level=9] keep
execute as @s[tag=tsunami_l] run fill ^.5 ^-1 ^-2 ^.5 ^2 ^-2 lava[level=9] keep
tag @s add break_obsidian
tag @s add delete_blocks
execute at @s[tag=thru2,tag=tsunami_w] unless block ~ ~-3 ~ water run setblock ~ ~1 ~ water keep
execute at @s[tag=thru2,tag=tsunami_l] unless block ~ ~-3 ~ lava run setblock ~ ~1 ~ lava keep
scoreboard players add @s spur_charge 1
execute at @s[scores={spur_charge=2..}] positioned ~ ~-1 ~ run function custom:break_blocks
scoreboard players reset @s[scores={spur_charge=2..}] spur_charge
execute at @s[tag=thru2] run function custom:break_blocks
execute at @s[tag=thru2] positioned ~ ~-1 ~ run function custom:break_blocks
execute at @s[tag=thru2] positioned ^1 ^-1 ^ run function custom:break_blocks
execute at @s[tag=thru2] positioned ^-1 ^-1 ^ run function custom:break_blocks
fill ~-.5 ~-.5 ~-.5 ~.5 ~.5 ~.5 fire keep
kill @s[scores={e_check=56..}]