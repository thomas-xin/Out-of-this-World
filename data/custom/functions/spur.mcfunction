execute as @s[scores={cs_delay=..0}] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["cs_target"]}
execute as @s[scores={cs_delay=..0}] as @e[tag=cs_target,limit=1] run tp @s 0 0 0 ~ ~
execute as @s[scores={cs_delay=..0}] as @e[tag=cs_target,limit=1] at @s run tp @s ^ ^ ^64

execute as @s[scores={cs_delay=..0}] anchored eyes run summon trident ~ ~ ~ {Tags:["level3","despawn","polar_star_bullet","assign"],Motion:[0.,.1,0.]}

execute positioned ~ ~1.7 ~ as @e[tag=assign] run tp @s ^ ^ ^.3 ~ ~

execute as @s[scores={cs_delay=..0}] as @e[tag=assign] run execute store result score @s var0 run data get entity @e[tag=cs_target,limit=1] Pos[0]
execute as @s[scores={cs_delay=..0}] as @e[tag=assign] run execute store result score @s var1 run data get entity @e[tag=cs_target,limit=1] Pos[1]
execute as @s[scores={cs_delay=..0}] as @e[tag=assign] run execute store result score @s var2 run data get entity @e[tag=cs_target,limit=1] Pos[2]
execute as @s[scores={cs_delay=..0}] run playsound entity.blaze.shoot player @a ~ ~ ~ 0.75 2
execute as @s[scores={cs_delay=..0}] run tag @e[tag=assign] remove assign
execute as @s[scores={cs_delay=..0}] run kill @e[tag=cs_target]

scoreboard players set @s cs_delay 6
effect give @s[gamemode=!creative,scores={spur_charge=1..60}] slowness 1 1