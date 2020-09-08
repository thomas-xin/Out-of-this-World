particle explosion ~ ~ ~ 1 .5 1 1 1 force
effect give @a[distance=..4] instant_damage 1 1
effect give @e[tag=basic,distance=..4] instant_damage 2 2
effect give @e[tag=undead,distance=..4] instant_health 2 2
execute as @e[type=wither,tag=!wither_main,tag=!minion,distance=..6] run data merge entity @s {ActiveEffects:[{Id:6,Amplifier:2,Duration:5}]}
execute at @e[type=ender_dragon,distance=..5] run summon creeper ~ ~ ~ {Fuse:0,Invulnerable:1,ExplosionRadius:3,powered:1}
execute positioned ^ ^ ^-3 run fill ~-2 ~ ~-2 ~2 ~5 ~2 air replace #impermeable
execute as @s[tag=!tsunami_w] positioned ^ ^ ^-3 run fill ~-1 ~ ~-1 ~1 ~3 ~1 air replace water
execute as @s[tag=tsunami_w] run fill ^ ^-1 ^-2 ^ ^1 ^-2 water[level=9] keep
execute as @s[tag=!tsunami_l] positioned ^ ^ ^-3 run fill ~-1 ~ ~-1 ~1 ~3 ~1 air replace lava
execute as @s[tag=tsunami_l] run fill ^ ^-1 ^-2 ^ ^1 ^-2 lava[level=9] keep
tag @s add break_stone
tag @s add delete_blocks
scoreboard players add @s spur_charge 1
execute at @s[scores={spur_charge=2..}] positioned ~ ~-1 ~ run function custom:break_blocks
scoreboard players reset @s[scores={spur_charge=2..}] spur_charge
execute at @s[tag=thru2] positioned ^ ^-1 ^ run function custom:break_blocks
execute at @s[tag=thru2] positioned ^1 ^ ^ run function custom:break_blocks
execute at @s[tag=thru2] positioned ^-1 ^ ^ run function custom:break_blocks
execute at @s[tag=thru2] run setblock ~ ~-1 ~ fire keep