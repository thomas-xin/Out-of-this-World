summon area_effect_cloud ~ ~ ~ {Duration:2,UUID:[I;-228179636,-894692885,-1195638206,-1408040957]}
execute as f266414c-caac-11eb-b8bc-0242ac130003 run tp @s 0 0 0 ~ ~
execute as f266414c-caac-11eb-b8bc-0242ac130003 at @s run tp @s ^ ^ ^64

execute at @s[tag=level_1] anchored eyes run summon fireball ^ ^ ^.9 {ExplosionPower:1,Tags:["level1","despawn","missile_launcher_bullet","assign"],Motion:[0.,0.,0.]}

execute at @s[tag=level_2] anchored eyes run summon fireball ^ ^ ^.9 {ExplosionPower:2,Tags:["level2","despawn","missile_launcher_bullet","assign"],Motion:[0.,0.,0.]}

execute at @s[tag=level_3] anchored eyes run summon fireball ^ ^.8 ^2.6 {ExplosionPower:2,Tags:["level3","despawn","missile_launcher_bullet","assign"],Motion:[0.,0.,0.]}
execute at @s[tag=level_3] anchored eyes run summon fireball ^.73 ^-.4 ^2.6 {ExplosionPower:1,Tags:["level3","despawn","missile_launcher_bullet","assign"],Motion:[0.,0.,0.]}
execute at @s[tag=level_3] anchored eyes run summon fireball ^-.73 ^-.4 ^2.6 {ExplosionPower:1,Tags:["level3","despawn","missile_launcher_bullet","assign"],Motion:[0.,0.,0.]}

execute as @e[tag=assign] run execute store result score @s var0 run data get entity f266414c-caac-11eb-b8bc-0242ac130003 Pos[0]
execute as @e[tag=assign] run execute store result score @s var1 run data get entity f266414c-caac-11eb-b8bc-0242ac130003 Pos[1]
execute as @e[tag=assign] run execute store result score @s var2 run data get entity f266414c-caac-11eb-b8bc-0242ac130003 Pos[2]
playsound entity.ghast.shoot player @a ~ ~ ~ 0.75 1.5
tag @e[tag=assign] remove assign
kill f266414c-caac-11eb-b8bc-0242ac130003
scoreboard players set @s cs_delay 50