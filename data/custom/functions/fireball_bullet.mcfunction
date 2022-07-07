execute at @s[tag=level1] run summon area_effect_cloud ~ ~1.7 ~ {Radius:.1,Duration:3,Color:16760703}
execute at @s[tag=level2] run summon area_effect_cloud ~ ~1.7 ~ {Radius:.1,Duration:3,Color:16776960}
execute at @s[tag=level3] run summon area_effect_cloud ~ ~1.7 ~ {Radius:.1,Duration:3,Color:8355839}
execute at @s[tag=level1] run summon area_effect_cloud ~ ~1.7 ~ {Radius:.1,Duration:3,Color:16760703}
execute at @s[tag=level2] run summon area_effect_cloud ~ ~1.7 ~ {Radius:.1,Duration:3,Color:16776960}
execute at @s[tag=level3] run summon area_effect_cloud ~ ~1.7 ~ {Radius:.1,Duration:3,Color:8355839}

execute as @s[tag=!level3] run particle flame ~ ~1.7 ~ .5 .5 .5 .1 3 force
execute as @s[tag=level3] run particle soul_fire_flame ~ ~1.7 ~ .5 .5 .5 .1 3 force
execute as @s[scores={var3=16..}] run setblock ~ ~.7 ~ soul_fire keep

execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s var0
tag @s[tag=thru] remove thru
execute positioned ~ ~.9 ~ run function custom:check_solid
execute if entity @s[tag=thru] store result entity @s Motion[1] double 0.006 run scoreboard players get @s var1
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s var2

kill @s[tag=level1,scores={var3=40..}]
kill @s[tag=level2,scores={var3=50..}]
kill @s[tag=level3,scores={var3=50..}]
scoreboard players add @s var3 1
scoreboard players set @s[scores={var3=8..}] var1 64

execute positioned ~ ~-.7 ~ run scoreboard players set @a[distance=..2] var1 1
execute positioned ~ ~-.7 ~ as @a[distance=..2] run function custom:damage_players

execute as @s[tag=level1] positioned ~ ~-.5 ~ run scoreboard players add @e[tag=basic,distance=..1.75] damaged 2

execute as @s[tag=level2] positioned ~ ~-.75 ~ run scoreboard players add @e[tag=basic,distance=..2] damaged 4

execute as @s[tag=level3] positioned ~ ~-.75 ~ run scoreboard players add @e[tag=basic,distance=..2] damaged 4

execute positioned ~ ~-.5 ~ if entity @e[tag=basic,distance=..1.75] run kill @s