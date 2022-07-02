tp @s ^ ^ ^1.5
execute at @s[tag=level1] run summon area_effect_cloud ~ ~.7 ~ {Radius:.1,Duration:3,Color:32512}
execute at @s[tag=level2] run summon area_effect_cloud ~ ~.7 ~ {Radius:.1,Duration:3,Color:16776960}
execute at @s[tag=level3] run summon area_effect_cloud ~ ~.7 ~ {Radius:.1,Duration:3,Color:8355839}
execute at @s[tag=level1] run summon area_effect_cloud ~ ~.7 ~ {Radius:.1,Duration:3,Color:32512}
execute at @s[tag=level2] run summon area_effect_cloud ~ ~.7 ~ {Radius:.1,Duration:3,Color:16776960}
execute at @s[tag=level3] run summon area_effect_cloud ~ ~.7 ~ {Radius:.1,Duration:3,Color:8355839}

scoreboard players set @s[tag=!level1,scores={var0=8}] var0 0

execute at @s[tag=!level1,scores={var0=0}] run tp @s ^ ^1 ^
execute at @s[tag=!level1,scores={var0=1}] run tp @s ^-.71 ^.71 ^
execute at @s[tag=!level1,scores={var0=2}] run tp @s ^-1 ^ ^
execute at @s[tag=!level1,scores={var0=3}] run tp @s ^-.71 ^-.71 ^
execute at @s[tag=!level1,scores={var0=4}] run tp @s ^ ^-1 ^
execute at @s[tag=!level1,scores={var0=5}] run tp @s ^.71 ^-.71 ^
execute at @s[tag=!level1,scores={var0=6}] run tp @s ^1 ^ ^
execute at @s[tag=!level1,scores={var0=7}] run tp @s ^.71 ^.71 ^

kill @s[tag=level1,scores={var3=12..}]
kill @s[tag=level2,scores={var3=16..}]
kill @s[tag=level3,scores={var3=20..}]
scoreboard players add @s var3 1
scoreboard players add @s[tag=!level1] var0 1

execute positioned ~ ~-.7 ~ run scoreboard players set @a[distance=.01..2.2] var1 1
execute positioned ~ ~-.7 ~ as @a[distance=.01..2.2] run function custom:damage_players

execute as @s[tag=level1] positioned ~ ~.5 ~ run scoreboard players add @e[tag=basic,distance=..2] damaged 4

execute as @s[tag=level2] positioned ~ ~.25 ~ run scoreboard players add @e[tag=basic,distance=..2.5] damaged 6

execute as @s[tag=level3] positioned ~ ~.25 ~ run scoreboard players add @e[tag=basic,distance=..2.5] damaged 8

execute positioned ~ ~-.5 ~ if entity @e[tag=killable,distance=..2] run kill @s