execute at @s[tag=level1] run summon area_effect_cloud ~ ~1.7 ~ {Radius:.1,Duration:3,Color:16760703}
execute at @s[tag=level2] run summon area_effect_cloud ~ ~1.7 ~ {Radius:.1,Duration:3,Color:16776960}
execute at @s[tag=level3] run summon area_effect_cloud ~ ~1.7 ~ {Radius:.1,Duration:3,Color:8355839}
execute at @s[tag=level1] run summon area_effect_cloud ~ ~1.7 ~ {Radius:.1,Duration:3,Color:16760703}
execute at @s[tag=level2] run summon area_effect_cloud ~ ~1.7 ~ {Radius:.1,Duration:3,Color:16776960}
execute at @s[tag=level3] run summon area_effect_cloud ~ ~1.7 ~ {Radius:.1,Duration:3,Color:8355839}

execute as @s[tag=!level3] run particle flame ~ ~1.7 ~ .5 .5 .5 .1 3 force
execute as @s[tag=level3] run particle end_rod ~ ~1.7 ~ .5 .5 .5 .1 3 force
execute as @s[scores={var3=8..}] run setblock ~ ~.7 ~ fire keep

execute store result entity @s Motion[0] double 0.02 run scoreboard players get @s var0
tag @s[tag=thru] remove thru
execute positioned ~ ~.9 ~ run function custom:check_solid
execute if entity @s[tag=thru] store result entity @s Motion[1] double 0.006 run scoreboard players get @s var1
execute store result entity @s Motion[2] double 0.02 run scoreboard players get @s var2

kill @s[tag=level1,scores={var3=40..}]
kill @s[tag=level2,scores={var3=50..}]
kill @s[tag=level3,scores={var3=50..}]
scoreboard players add @s var3 1
scoreboard players set @s var1 64

scoreboard players set @a[distance=.01..2] var1 1
execute as @a[distance=.01..2] run function custom:damage_players

execute as @s[tag=level1] positioned ~ ~.3 ~ run effect give @e[tag=living,distance=.01..1.5] instant_damage 1 0
execute as @s[tag=level1] positioned ~ ~-.2 ~ run effect give @e[tag=undead,distance=.01..1.5] instant_health 1 0

execute as @s[tag=level2] positioned ~ ~ ~ run effect give @e[tag=living,distance=.01..2] instant_damage 1 1
execute as @s[tag=level2] positioned ~ ~-.5 ~ run effect give @e[tag=undead,distance=.01..2] instant_health 1 1

execute as @s[tag=level3] positioned ~ ~ ~ run effect give @e[tag=living,distance=.01..2] instant_damage 1 1
execute as @s[tag=level3] positioned ~ ~-.5 ~ run effect give @e[tag=undead,distance=.01..2] instant_health 1 1

execute positioned ~ ~-2 ~ as @e[type=wither,distance=..3] run data merge entity @s {ActiveEffects:[{Id:6,Amplifier:0,Duration:20}]}
execute positioned ~ ~-1 ~ at @e[type=ender_dragon,distance=..4] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1}