execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{HideFlags:4}}},distance=..4,sort=nearest,limit=1] anchored eyes run tp @s ^ ^ ^.8 ~ ~
execute at @s[scores={var3=1}] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["cs_target"]}
execute as @e[tag=cs_target,limit=1] run tp @s 0 0 0 ~ ~
execute as @e[tag=cs_target,limit=1] at @s run tp @s ^ ^ ^64
execute at @s[tag=level1,scores={var3=1}] anchored eyes run summon arrow ^ ^ ^.8 {damage:1,Color:12566527,Duration:5,Tags:["level1","despawn","no_destroy","polar_star_bullet","assign"],Motion:[0.,.1,0.]}
execute at @s[tag=level2,scores={var3=1}] anchored eyes run summon arrow ^ ^ ^.8 {damage:2,Color:16777215,Duration:5,Tags:["level2","despawn","no_destroy","polar_star_bullet","assign"],Motion:[0.,.1,0.]}
execute at @s[tag=level3,scores={var3=1}] anchored eyes run summon trident ^ ^ ^.8 {damage:4,Color:12566527,Duration:5,Tags:["level3","despawn","no_destroy","polar_star_bullet","assign"],Motion:[0.,.1,0.]}
execute as @e[tag=assign] run execute store result score @s var0 run data get entity @e[tag=cs_target,limit=1] Pos[0]
execute as @e[tag=assign] run execute store result score @s var1 run data get entity @e[tag=cs_target,limit=1] Pos[1]
execute as @e[tag=assign] run execute store result score @s var2 run data get entity @e[tag=cs_target,limit=1] Pos[2]
kill @e[tag=cs_target]
tag @e[tag=assign] remove assign
execute at @s[scores={var3=1}] run playsound entity.blaze.shoot player @a ~ ~ ~ 0.9 1.66666667
scoreboard players reset @s[scores={var3=2..}]
scoreboard players add @s var3 1
tag @s[tag=thru] remove thru
execute as @s[tag=level3] at @a[nbt={OnGround:0b,abilities:{flying:0b}},scores={cs_delay=1..},distance=..3,sort=nearest,limit=1] positioned ~ ~-.5 ~ run function custom:check_solid
execute as @s[tag=level3,tag=!thru] as @a[nbt={OnGround:0b,abilities:{flying:0b}},scores={cs_delay=1..},distance=..3,sort=nearest,limit=1] at @s run tp @s ^ ^ ^-.5
execute at @p[distance=..3] run tp @s ^ ^ ^.8