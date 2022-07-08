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
execute at @s[tag=!thru] run tp @s ^ ^ ^0.9

execute at @s positioned ^ ^ ^1 positioned ~ ~1.7 ~ run function custom:check_solid
execute at @s positioned ^ ^ ^1 if block ~ ~1.7 ~ water run tag @s remove thru
execute at @s positioned ~ ~1.7 ~ run function custom:pierce_blocks
execute at @s[tag=thru,tag=level1] run tp @s ^ ^ ^.1
execute at @s[tag=thru,tag=level2] run tp @s ^ ^ ^.2
execute at @s[tag=thru,tag=level3] run tp @s ^ ^ ^.4
execute at @s[tag=!thru] run tp @s ^ ^ ^1.15

execute at @s positioned ^ ^ ^1 positioned ~ ~1.7 ~ run function custom:check_solid
execute at @s positioned ^ ^ ^1 if block ~ ~1.7 ~ water run tag @s remove thru
execute at @s positioned ~ ~1.7 ~ run function custom:pierce_blocks
execute at @s[tag=thru,tag=level1] run tp @s ^ ^ ^.1
execute at @s[tag=thru,tag=level2] run tp @s ^ ^ ^.2
execute at @s[tag=thru,tag=level3] run tp @s ^ ^ ^.4
execute at @s[tag=!thru] run tp @s ^ ^ ^1.2

scoreboard players add @s[tag=thru] var3 2

execute at @s[tag=level1,scores={var3=80..}] run summon creeper ~ ~1.7 ~ {Invulnerable:1,powered:1,Fuse:0,ExplosionRadius:1}
execute at @s[tag=level2,scores={var3=200..}] run summon tnt ~ ~1.7 ~ {Fuse:0,Tags:["vanilla"]}
execute at @s[tag=level3,scores={var3=360..}] positioned ~ ~1.7 ~ run function custom:pierce_blocks
execute at @s[tag=level3,scores={var3=360..}] run summon tnt ~ ~1.7 ~ {Invulnerable:1,powered:1,Fuse:0,ExplosionRadius:3}

tag @s[tag=thru] remove thru

execute at @s[tag=level1] run summon area_effect_cloud ~ ~ ~ {Duration:12,Tags:["glow"]}
execute at @s[tag=level2] run summon area_effect_cloud ~ ~ ~ {Duration:16,Tags:["glow"]}
execute at @s[tag=level3] run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["glow"]}

kill @s[tag=level1,scores={var3=80..}]
kill @s[tag=level2,scores={var3=200..}]
kill @s[tag=level3,scores={var3=360..}]

scoreboard players add @s var3 4
scoreboard players add @s[tag=!level1] var3 4
scoreboard players add @s[tag=level3] var3 4

execute at @s[tag=level1] positioned ~ ~-.3 ~ run scoreboard players set @a[distance=.01..2.5] var1 2
execute at @s[tag=level1] positioned ~ ~-.3 ~ run scoreboard players set @a[distance=.01..1.5] var1 3
execute at @s[tag=level2] positioned ~ ~-.3 ~ run scoreboard players set @a[distance=.01..3.5] var1 3
execute at @s[tag=level2] positioned ~ ~-.3 ~ run scoreboard players set @a[distance=.01..2.5] var1 4
execute at @s[tag=level3] positioned ~ ~-.3 ~ run scoreboard players set @a[distance=.01..4.5] var1 4
execute at @s[tag=level3] positioned ~ ~-.3 ~ run scoreboard players set @a[distance=.01..3.5] var1 5
execute at @s[tag=level1] positioned ~ ~-.3 ~ as @a[distance=.01..2.5] run function custom:damage_players
execute at @s[tag=level2] positioned ~ ~-.3 ~ as @a[distance=.01..3.5] run function custom:damage_players
execute at @s[tag=level3] positioned ~ ~-.3 ~ as @a[distance=.01..4.5] run function custom:damage_players

execute at @s[tag=level1] positioned ~ ~-.5 ~ run scoreboard players add @e[tag=basic,distance=..2] damaged 9
execute at @s[tag=level1] positioned ~ ~-.5 ~ run scoreboard players add @e[type=#custom:large,distance=2..4] damaged 9
execute at @s[tag=level1] positioned ~ ~-.5 ~ run scoreboard players add @e[tag=basic,distance=..3] damaged 6
execute at @s[tag=level1] positioned ~ ~-.5 ~ run scoreboard players add @e[type=#custom:large,distance=3..6] damaged 6

execute at @s[tag=level2,scores={var3=..23}] positioned ~ ~-.5 ~ run scoreboard players add @e[tag=basic,distance=..2] damaged 16
execute at @s[tag=level2,scores={var3=24..}] positioned ~ ~-.5 ~ run scoreboard players add @e[tag=basic,distance=..2.5] damaged 18
execute at @s[tag=level2,scores={var3=24..}] positioned ~ ~-.5 ~ run scoreboard players add @e[tag=basic,distance=..3.75] damaged 12
execute at @s[tag=level2,scores={var3=..23}] positioned ~ ~-.5 ~ run scoreboard players add @e[type=#custom:large,distance=2..4] damaged 16
execute at @s[tag=level2,scores={var3=24..}] positioned ~ ~-.5 ~ run scoreboard players add @e[type=#custom:large,distance=2.5..5] damaged 18
execute at @s[tag=level2,scores={var3=24..}] positioned ~ ~-.5 ~ run scoreboard players add @e[type=#custom:large,distance=3.75..7.5] damaged 12

execute at @s[tag=level3,scores={var3=..35}] positioned ~ ~-.5 ~ run scoreboard players add @e[tag=basic,distance=..2] damaged 24
execute at @s[tag=level3,scores={var3=36..}] positioned ~ ~-.5 ~ run scoreboard players add @e[tag=basic,distance=..3] damaged 27
execute at @s[tag=level3,scores={var3=36..}] positioned ~ ~-.5 ~ run scoreboard players add @e[tag=basic,distance=..4.5] damaged 18
execute at @s[tag=level3,scores={var3=..35}] positioned ~ ~-.5 ~ run scoreboard players add @e[type=#custom:large,distance=2..4] damaged 24
execute at @s[tag=level3,scores={var3=36..}] positioned ~ ~-.5 ~ run scoreboard players add @e[type=#custom:large,distance=3..6] damaged 27
execute at @s[tag=level3,scores={var3=36..}] positioned ~ ~-.5 ~ run scoreboard players add @e[type=#custom:large,distance=4.5..9] damaged 18

tag @s[tag=!level3] add break_stone
tag @s[tag=level3] add break_obsidian
tag @s add silk_blocks