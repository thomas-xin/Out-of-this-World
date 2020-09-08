summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["cs_target"]}
execute as @e[tag=cs_target,limit=1] run tp @s 0 0 0 ~ ~
execute as @e[tag=cs_target,limit=1] at @s run tp @s ^ ^ ^80

execute at @s[tag=level_1] anchored eyes run summon fireball ^ ^ ^.9 {ExplosionPower:2,Tags:["level1","despawn","super_missile_launcher_bullet","assign"],Motion:[0.,0.,0.]}

execute at @s[tag=level_2] anchored eyes run summon fireball ^ ^ ^.9 {ExplosionPower:3,Tags:["level2","despawn","super_missile_launcher_bullet","assign"],Motion:[0.,0.,0.]}

execute at @s[tag=level_3] anchored eyes run summon fireball ^ ^.8 ^1.3 {ExplosionPower:2,Tags:["level3","despawn","super_missile_launcher_bullet","assign"],Motion:[0.,0.,0.]}
execute at @s[tag=level_3] anchored eyes run summon fireball ^.73 ^-.4 ^1.3 {ExplosionPower:2,Tags:["level3","despawn","super_missile_launcher_bullet","assign"],Motion:[0.,0.,0.]}
execute at @s[tag=level_3] anchored eyes run summon fireball ^-.73 ^-.4 ^1.3 {ExplosionPower:2,Tags:["level3","despawn","super_missile_launcher_bullet","assign"],Motion:[0.,0.,0.]}

execute as @e[tag=assign] run execute store result score @s var0 run data get entity @e[tag=cs_target,limit=1] Pos[0]
execute as @e[tag=assign] run execute store result score @s var1 run data get entity @e[tag=cs_target,limit=1] Pos[1]
execute as @e[tag=assign] run execute store result score @s var2 run data get entity @e[tag=cs_target,limit=1] Pos[2]
playsound entity.ghast.shoot player @a ~ ~ ~ 0.75 1.5
tag @e[tag=assign] remove assign
kill @e[tag=cs_target]
scoreboard players set @s cs_delay 40