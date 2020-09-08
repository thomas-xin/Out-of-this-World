execute at @s[tag=level_1] anchored eyes run summon area_effect_cloud ~ ~ ~ {Duration:6,Tags:["level1","despawn","machine_gun_bullet","assign"]}
execute at @s[tag=level_2] anchored eyes run summon area_effect_cloud ~ ~ ~ {Duration:6,Tags:["level2","despawn","machine_gun_bullet","assign"]}
execute at @s[tag=level_3] anchored eyes run summon area_effect_cloud ~ ~ ~ {Duration:6,Tags:["level3","despawn","machine_gun_bullet","assign"]}
execute as @e[tag=assign] run tp @s ^ ^ ^.8 ~ ~
tag @e[tag=assign] remove assign
scoreboard players set @s cs_delay 5
execute as @e[tag=level_3] as @a[nbt={OnGround:0b},tag=machine_gun,distance=..4,sort=nearest,limit=1] run effect give @s slow_falling 1 0