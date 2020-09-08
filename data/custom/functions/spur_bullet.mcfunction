execute at @s[tag=level1] run summon area_effect_cloud ~ ~1.7 ~ {Radius:.1,Duration:3,Color:16760703}
execute at @s[tag=level2] run summon area_effect_cloud ~ ~1.7 ~ {Radius:.1,Duration:3,Color:16776960}
execute at @s[tag=level3] run summon area_effect_cloud ~ ~1.7 ~ {Radius:.1,Duration:3,Color:8355839}
execute at @s[tag=level1] run summon area_effect_cloud ~ ~1.7 ~ {Radius:.1,Duration:3,Color:16760703}
execute at @s[tag=level2] run summon area_effect_cloud ~ ~1.7 ~ {Radius:.1,Duration:3,Color:16776960}
execute at @s[tag=level3] run summon area_effect_cloud ~ ~1.7 ~ {Radius:.1,Duration:3,Color:8355839}

execute as @s run particle flash ~ ~1.7 ~ 0 0 0 0 1 force
execute as @s[tag=level2] run particle flash ~ ~1.7 ~ 0 0 0 0 1 force
execute as @s[tag=level3] run particle flash ~ ~1.7 ~ 0 0 0 0 8 force
execute as @s run particle end_rod ~ ~1.7 ~ .2 .2 .2 0 8 force
execute as @s[tag=level2] run particle end_rod ~ ~1.7 ~ .5 .5 .5 0 16 force
execute as @s[tag=level3] run particle end_rod ~ ~1.7 ~ .7 .7 .7 0 32 force
execute as @s[tag=level3] run particle poof ~ ~1.7 ~ .7 .7 .7 0 16 force
execute as @s[tag=!level1] run particle firework ~ ~1.7 ~ .6 .6 .6 .05 16 force

execute at @s positioned ^ ^ ^1 positioned ~ ~1.7 ~ run function custom:check_solid
execute at @s positioned ^ ^ ^1 if block ~ ~1.7 ~ water run tag @s remove thru
execute at @s positioned ~ ~1.7 ~ run function custom:pierce_blocks
execute at @s[tag=thru,tag=level1] run tp @s ^ ^ ^.1
execute at @s[tag=thru,tag=level2] run tp @s ^ ^ ^.2
execute at @s[tag=thru,tag=level3] run tp @s ^ ^ ^.4
execute at @s[tag=!thru] run tp @s ^ ^ ^.9

execute at @s positioned ^ ^ ^1 positioned ~ ~1.7 ~ run function custom:check_solid
execute at @s positioned ^ ^ ^1 if block ~ ~1.7 ~ water run tag @s remove thru
execute at @s positioned ~ ~1.7 ~ run function custom:pierce_blocks
execute at @s[tag=thru,tag=level1] run tp @s ^ ^ ^.1
execute at @s[tag=thru,tag=level2] run tp @s ^ ^ ^.2
execute at @s[tag=thru,tag=level3] run tp @s ^ ^ ^.4
execute at @s[tag=!thru] run tp @s ^ ^ ^.9

execute at @s positioned ^ ^ ^1 positioned ~ ~1.7 ~ run function custom:check_solid
execute at @s positioned ^ ^ ^1 if block ~ ~1.7 ~ water run tag @s remove thru
execute at @s positioned ~ ~1.7 ~ run function custom:pierce_blocks
execute at @s[tag=thru,tag=level1] run tp @s ^ ^ ^.1
execute at @s[tag=thru,tag=level2] run tp @s ^ ^ ^.2
execute at @s[tag=thru,tag=level3] run tp @s ^ ^ ^.4
execute at @s[tag=!thru] run tp @s ^ ^ ^.9

scoreboard players add @s[tag=thru] var3 2

execute at @s[tag=level1,scores={var3=80..}] run summon creeper ~ ~1.7 ~ {Invulnerable:1,powered:1,Fuse:0,ExplosionRadius:1}
execute at @s[tag=level2,scores={var3=200..}] run summon tnt ~ ~1.7 ~ {Fuse:0,Tags:["vanilla"]}
execute at @s[tag=level3,scores={var3=360..}] positioned ~ ~1.7 ~ run function custom:pierce_blocks
execute at @s[tag=level3,scores={var3=360..}] run summon tnt ~ ~1.8 ~ {Tags:["vanilla"]}
execute at @s[tag=level3,scores={var3=360..}] run summon tnt ~ ~1.6 ~ {Fuse:0,Tags:["vanilla"]}

tag @s[tag=thru] remove thru

kill @s[tag=level1,scores={var3=80..}]
kill @s[tag=level2,scores={var3=200..}]
kill @s[tag=level3,scores={var3=360..}]

scoreboard players add @s var3 4
scoreboard players add @s[tag=!level1] var3 4
scoreboard players add @s[tag=level3] var3 4

execute at @s positioned ~ ~1.7 ~ if entity @e[type=end_crystal,distance=..4] run scoreboard players set @s var3 3000
execute at @s positioned ~ ~1.7 ~ if entity @e[type=ender_dragon,distance=..8] run scoreboard players set @s var3 3000

execute at @s[tag=level1] positioned ~ ~-.3 ~ run scoreboard players set @a[distance=.01..2.5] var1 2
execute at @s[tag=level1] positioned ~ ~-.3 ~ run scoreboard players set @a[distance=.01..1.5] var1 3
execute at @s[tag=level2] positioned ~ ~-.3 ~ run scoreboard players set @a[distance=.01..3.5] var1 3
execute at @s[tag=level2] positioned ~ ~-.3 ~ run scoreboard players set @a[distance=.01..2.5] var1 4
execute at @s[tag=level3] positioned ~ ~-.3 ~ run scoreboard players set @a[distance=.01..4.5] var1 4
execute at @s[tag=level3] positioned ~ ~-.3 ~ run scoreboard players set @a[distance=.01..3.5] var1 5
execute at @s[tag=level1] positioned ~ ~-.3 ~ as @a[distance=.01..2.5] run function custom:damage_players
execute at @s[tag=level2] positioned ~ ~-.3 ~ as @a[distance=.01..3.5] run function custom:damage_players
execute at @s[tag=level3] positioned ~ ~-.3 ~ as @a[distance=.01..4.5] run function custom:damage_players

execute at @s[tag=level1] positioned ~ ~-.3 ~ run effect give @e[tag=living,distance=.01..1.5] instant_damage 1 2
execute at @s[tag=level1] positioned ~ ~.7 ~ run effect give @e[tag=undead,distance=.01..1.5] instant_health 1 2
execute at @s[tag=level1] positioned ~ ~-.3 ~ run effect give @e[tag=living,distance=2..2.5] instant_damage 1 1
execute at @s[tag=level1] positioned ~ ~.7 ~ run effect give @e[tag=undead,distance=2..2.5] instant_health 1 1

execute at @s[tag=level2] positioned ~ ~-.55 ~ run effect give @e[tag=living,distance=.01..2.5] instant_damage 1 3
execute at @s[tag=level2] positioned ~ ~.45 ~ run effect give @e[tag=undead,distance=.01..2.5] instant_health 1 3
execute at @s[tag=level2] positioned ~ ~-.55 ~ run effect give @e[tag=living,distance=3..3.5] instant_damage 1 2
execute at @s[tag=level2] positioned ~ ~.45 ~ run effect give @e[tag=undead,distance=3..3.5] instant_health 1 2

execute at @s[tag=level3] positioned ~ ~-.8 ~ run effect give @e[tag=living,distance=.01..3.5] instant_damage 1 4
execute at @s[tag=level3] positioned ~ ~.2 ~ run effect give @e[tag=undead,distance=.01..3.5] instant_health 1 4
execute at @s[tag=level3] positioned ~ ~-.8 ~ run effect give @e[tag=living,distance=4..4.5] instant_damage 1 3
execute at @s[tag=level3] positioned ~ ~.2 ~ run effect give @e[tag=undead,distance=4..4.5] instant_health 1 3

tag @s[tag=!level3] add break_stone
tag @s[tag=level3] add break_obsidian
tag @s add silk_blocks

execute at @s[tag=level1] positioned ~ ~-2 ~ as @e[type=wither,distance=..2.5] run data merge entity @s {ActiveEffects:[{Id:6,Amplifier:2,Duration:5}]}
execute at @s[tag=level1] positioned ~ ~-1 ~ at @e[type=ender_dragon,distance=..6] run summon creeper ~ ~1.7 ~ {Invulnerable:1,powered:1,Fuse:0,ExplosionRadius:2}
execute at @s[tag=level2] positioned ~ ~-2 ~ as @e[type=wither,distance=..3] run data merge entity @s {ActiveEffects:[{Id:6,Amplifier:3,Duration:5}]}
execute at @s[tag=level2] positioned ~ ~-1 ~ at @e[type=ender_dragon,distance=..7] run summon creeper ~ ~1.7 ~ {Invulnerable:1,powered:1,Fuse:0,ExplosionRadius:4}
execute at @s[tag=level3] positioned ~ ~-2 ~ as @e[type=wither,distance=..3.5] run data merge entity @s {ActiveEffects:[{Id:6,Amplifier:4,Duration:5}]}
execute at @s[tag=level3] positioned ~ ~-1 ~ at @e[type=ender_dragon,distance=..8] run summon creeper ~ ~1.7 ~ {Invulnerable:1,powered:1,Fuse:0,ExplosionRadius:6}