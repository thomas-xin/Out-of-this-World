execute as @e[scores={wither_id=1..}] store result score @s compare_id run scoreboard players get @s wither_id
scoreboard players operation @e[scores={wither_id=1..}] compare_id -= @s wither_id

execute as @e[tag=wither_orbit,scores={compare_id=0}] run tp @s ~ ~ ~

execute as @e[tag=wither_hitbox_1,scores={compare_id=0}] run tp @s ^-2 ^3 ^
execute store result score @s[nbt={Invul:0}] health_target run data get entity @e[tag=wither_hitbox_1,scores={compare_id=0},limit=1] Health
scoreboard players remove @s[nbt={Invul:0}] health_target 1000
execute if score @s[nbt={Invul:0}] health_target matches ..-1 run scoreboard players operation @s damaged -= @s health_target

execute as @e[tag=wither_hitbox_2,scores={compare_id=0}] run tp @s ^ ^3.5 ^0.25
execute store result score @s[nbt={Invul:0}] health_target run data get entity @e[tag=wither_hitbox_2,scores={compare_id=0},limit=1] Health
scoreboard players remove @s[nbt={Invul:0}] health_target 1000
execute if score @s[nbt={Invul:0}] health_target matches ..-1 run scoreboard players operation @s damaged -= @s health_target

execute as @e[tag=wither_hitbox_3,scores={compare_id=0}] run tp @s ^2 ^3 ^
execute store result score @s[nbt={Invul:0}] health_target run data get entity @e[tag=wither_hitbox_3,scores={compare_id=0},limit=1] Health
scoreboard players remove @s[nbt={Invul:0}] health_target 1000
execute if score @s[nbt={Invul:0}] health_target matches ..-1 run scoreboard players operation @s damaged -= @s health_target

execute as @e[tag=wither_hitbox,scores={compare_id=0}] run data merge entity @s {Fire:-20,Health:1000}