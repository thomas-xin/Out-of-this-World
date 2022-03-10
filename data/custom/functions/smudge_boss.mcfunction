scoreboard players add @s var0 1

execute if entity @s[scores={var0=16}] run summon area_effect_cloud ~ ~-0.5 ~ {Duration:24,Tags:["hex_spiral","smudge_particle"]}
execute if entity @s[scores={var0=16}] store result score @e[tag=smudge_particle,sort=nearest,limit=1] smudge_id run scoreboard players get @s smudge_id
execute if entity @s[scores={var0=16}] store result entity @e[tag=smudge_particle,sort=nearest,limit=1] Rotation[0] float 1 run data get entity @e[tag=blow_centre,sort=random,limit=1] Rotation[0]

execute as @e[tag=smudge_particle] store result score @s compare_id run scoreboard players get @s smudge_id
scoreboard players operation @e[tag=smudge_particle] compare_id -= @s smudge_id
execute store result entity @e[tag=smudge_particle,scores={compare_id=0},sort=nearest,limit=1] Pos[0] double 0.01 run data get entity @s Pos[0] 100
execute store result entity @e[tag=smudge_particle,scores={compare_id=0},sort=nearest,limit=1] Pos[2] double 0.01 run data get entity @s Pos[2] 100

execute if entity @s[scores={var0=16}] if entity @p[gamemode=!spectator,distance=..0.9] run effect give @s instant_damage
execute if entity @s[scores={var0=16}] run effect give @a[distance=..0.9] regeneration 1 2
execute if entity @s[scores={var0=16}] run effect give @a[distance=..0.9] saturation 1
execute if entity @s[scores={var0=16}] if entity @p[gamemode=!spectator,distance=..0.9] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r1"]}
execute if entity @s[scores={var0=16}] if entity @p[gamemode=!spectator,distance=..0.9] run particle heart ~ ~1 ~ 1 1 1 0 16 force
execute if entity @e[tag=r1] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r2"]}
execute if entity @e[tag=r1] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r3"]}
execute if entity @e[tag=r1] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r4"]}
execute as @e[tag=random,sort=random,limit=1] run tag @s add assigned
kill @e[tag=random,tag=!assigned]
execute if entity @e[tag=r1] run playsound entity.fox.sleep neutral @a[distance=..48] ~ ~ ~ 1 0.975 0.01
execute if entity @e[tag=r2] run playsound entity.cat.purr neutral @a[distance=..48] ~ ~ ~ 1 0.975 0.01
kill @e[tag=assigned]
scoreboard players reset @s[scores={var0=16..}] var0

summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r1"]}
summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r2"]}

execute if entity @s[nbt={Glowing:1b}] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run playsound entity.fox.aggro hostile @a[distance=..48] ~ ~ ~ 1 0.7
execute if entity @s[nbt={Glowing:1b}] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run playsound entity.cat.hiss hostile @a[distance=..48] ~ ~ ~ 1 0.8
execute if entity @s[nbt={Glowing:1b}] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run playsound entity.wolf.growl hostile @a[distance=..48] ~ ~ ~ 0.5 1.1

execute if entity @s[nbt=!{Glowing:1b}] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run playsound entity.fox.ambient neutral @a[distance=..48] ~ ~ ~ 1 0.9
execute if entity @s[nbt=!{Glowing:1b}] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run playsound entity.wolf.whine neutral @a[distance=..48] ~ ~ ~ 0.3 1.1
execute if entity @s[nbt=!{Glowing:1b}] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] as @e[tag=random,sort=random,limit=1] if entity @s[tag=r1] run playsound entity.rabbit.ambient neutral @a[distance=..48] ~ ~ ~ 1 0.8

kill @e[tag=random]
execute store result score @s compare_id run data get entity @s Health
scoreboard players operation @s compare_id -= @s var2
execute if entity @s[scores={compare_id=..-1}] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r1"]}
execute if entity @s[scores={compare_id=..-1}] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r2"]}
execute if entity @s[scores={compare_id=..-1}] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["random","r3"]}
kill @e[tag=random,sort=random,limit=2]
execute if entity @e[tag=r1,limit=1] run playsound entity.fox.hurt neutral @a[distance=..64] ~ ~ ~ 2 0.875 0.03
execute if entity @e[tag=r2,limit=1] run playsound entity.fox.hurt neutral @a[distance=..64] ~ ~ ~ 2 0.8 0.03
execute if entity @e[tag=r3,limit=1] run playsound entity.fox.hurt neutral @a[distance=..64] ~ ~ ~ 2 0.75 0.03
kill @e[tag=random]
execute store result score @s var2 run data get entity @s Health
execute if entity @s[nbt=!{Glowing:1b},scores={var2=..58}] run playsound entity.fox.screech hostile @a[distance=..80] ~ ~ ~ 5 1 0.1
data merge entity @s[scores={var2=..58}] {Glowing:1b}
data merge entity @s[scores={var2=..58}] {NoGravity:1b}
execute positioned ~ 255 ~ run tag @s[distance=..128] add thru
execute at @s[tag=!thru] anchored eyes run function custom:check_solid
tp @s[tag=thru] ~ ~-.35 ~
tag @s[tag=!thru] add thru2
execute at @s[tag=!thru] run function custom:check_solid
tp @s[tag=thru,tag=thru2] ~ ~.1 ~
tag @s remove thru
tag @s remove thru2
execute at @s[nbt={Glowing:1b}] run function custom:smudge_angee
execute at @s positioned ~ -32 ~ if block ~ 0 ~ air if entity @s[distance=..64] at @s run tp ~ ~0.2 ~