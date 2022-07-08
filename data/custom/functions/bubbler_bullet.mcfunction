execute at @s run tp @s[tag=!level3] ^ ^ ^2.5
execute at @s[tag=level3] run function custom:bubbler3
execute at @s[tag=level1] run summon area_effect_cloud ~ ~.7 ~ {Radius:.05,Duration:3,Color:16777215}
execute at @s[tag=level2] run summon area_effect_cloud ~ ~.7 ~ {Radius:.06,Duration:3,Color:8355839}
execute at @s[tag=level3] run summon area_effect_cloud ~ ~.7 ~ {Radius:.07,Duration:3,Color:16777215}
execute at @s[tag=level1] run summon area_effect_cloud ~ ~.7 ~ {Radius:.05,Duration:3,Color:16777215}
execute at @s[tag=level2] run summon area_effect_cloud ~ ~.7 ~ {Radius:.06,Duration:3,Color:8355839}
execute at @s[tag=level3] run summon area_effect_cloud ~ ~.7 ~ {Radius:.07,Duration:3,Color:16777215}
execute at @s[tag=level4] run summon area_effect_cloud ~ ~.7 ~ {Radius:.08,Duration:3,Color:16777215}

scoreboard players set @s[tag=level3,scores={var0=24}] var0 0

execute at @s[tag=level3,scores={var0=0..2}] run tp @s ^ ^1 ^
execute at @s[tag=level3,scores={var0=3..5}] run tp @s ^-.71 ^.71 ^
execute at @s[tag=level3,scores={var0=6..8}] run tp @s ^-1 ^ ^
execute at @s[tag=level3,scores={var0=9..11}] run tp @s ^-.71 ^-.71 ^
execute at @s[tag=level3,scores={var0=12..14}] run tp @s ^ ^-1 ^
execute at @s[tag=level3,scores={var0=15..17}] run tp @s ^.71 ^-.71 ^
execute at @s[tag=level3,scores={var0=18..20}] run tp @s ^1 ^ ^
execute at @s[tag=level3,scores={var0=21..23}] run tp @s ^.71 ^.71 ^

execute at @s[tag=!level3] positioned ^ ^ ^.1 positioned ~ ~.7 ~ run function custom:check_solid
# execute at @s[tag=level4] positioned ^ ^ ^.1 positioned ~ ~1.7 ~ run function custom:break_blocks
kill @s[tag=thru,tag=level4]
execute at @s[tag=thru] run tp @s ~ ~.75 ~ ~ ~-8
tag @s[tag=thru] remove thru

kill @s[tag=level1,scores={var3=12..}]
kill @s[tag=level2,scores={var3=16..}]
kill @s[tag=level3,scores={var3=49..}]
kill @s[tag=level4,scores={var3=24..}]
scoreboard players add @s var3 1
scoreboard players add @s[tag=level3] var0 1

execute positioned ~ ~-.7 ~ run scoreboard players set @a[distance=..1.7] var1 1
execute positioned ~ ~-.7 ~ as @a[distance=..1.7] run function custom:damage_players

execute as @s[tag=level1] positioned ~ ~ ~ run scoreboard players add @e[tag=basic,distance=..1.5] damaged 1

execute as @s[tag=level2] positioned ~ ~ ~ run scoreboard players add @e[tag=basic,distance=..2] damaged 2

execute as @s[tag=level3] positioned ~ ~ ~ run scoreboard players add @e[tag=basic,distance=..2] damaged 3

execute as @s[tag=level4] positioned ~ ~ ~ run scoreboard players add @e[tag=basic,distance=..2] damaged 3

execute positioned ~ ~-.5 ~ if entity @e[tag=basic,distance=..1.5] run kill @s