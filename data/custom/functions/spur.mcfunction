execute if entity @s[scores={cs_delay=..0}] run summon area_effect_cloud ~ ~ ~ {Duration:2,UUID:[I;-228179636,-894692885,-1195638206,-1408040957]}
execute if entity @s[scores={cs_delay=..0}] as f266414c-caac-11eb-b8bc-0242ac130003 run tp @s 0 0 0 ~ ~
execute if entity @s[scores={cs_delay=..0}] as f266414c-caac-11eb-b8bc-0242ac130003 at @s run tp @s ^ ^ ^64

execute as @s[scores={cs_delay=..0}] anchored eyes run summon trident ~ ~ ~ {Tags:["level3","despawn","no_destroy","polar_star_bullet","assign"],Motion:[0.,.1,0.]}

execute positioned ~ ~1.7 ~ as @e[tag=assign] run tp @s ^ ^ ^.3 ~ ~

execute if entity @s[scores={cs_delay=..0}] as @e[tag=assign] run execute store result score @s var0 run data get entity f266414c-caac-11eb-b8bc-0242ac130003 Pos[0]
execute if entity @s[scores={cs_delay=..0}] as @e[tag=assign] run execute store result score @s var1 run data get entity f266414c-caac-11eb-b8bc-0242ac130003 Pos[1]
execute if entity @s[scores={cs_delay=..0}] as @e[tag=assign] run execute store result score @s var2 run data get entity f266414c-caac-11eb-b8bc-0242ac130003 Pos[2]
execute if entity @s[scores={cs_delay=..0}] run playsound entity.blaze.shoot player @a ~ ~ ~ 0.75 2
execute if entity @s[scores={cs_delay=..0}] run tag @e[tag=assign] remove assign
kill f266414c-caac-11eb-b8bc-0242ac130003

scoreboard players set @s cs_delay 6
effect give @s[gamemode=!creative,scores={spur_charge=1..299}] slowness 1 1