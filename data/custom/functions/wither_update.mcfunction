execute positioned ~ ~3 ~ as @e[type=wither_skull,nbt=!{Silent:1b},distance=..4,limit=1] run playsound minecraft:entity.wither.shoot neutral @a ~ ~ ~ 3 0.75
execute positioned ~ ~3 ~ as @e[type=wither_skull,nbt=!{Silent:1b},distance=..4] run data merge entity @s {Silent:1b,Tags:["supercharged"],Glowing:1b}
execute if entity @s[y=-127,dy=64] run tp @s ^ ^0.1 ^0.3
execute if entity @s[y=0,dy=99] unless block ~ ~-3.5 ~ #custom:fragile unless block ~ ~-3.5 ~ air run tp @s ^ ^0.2116 ^0.0625

execute if entity @s[tag=!totem_used] store result score __temp__ var0 run data get entity @s Health
execute if score __temp__ var0 matches ..5 run data merge entity @s {Invul:50,Health:20,HandItems:[],ActiveEffects:[{Id:6b,Amplifier:1b,Duration:300},{Id:7b,Amplifier:2b,Duration:300},{Id:11b,Amplifier:0b,Duration:99999999},{Id:14b,Amplifier:0b,Duration:99999999}]}
execute if score __temp__ var0 matches ..5 run tag @s add totem_used
scoreboard players reset __temp__ var0

execute if score __slow_loop__ var0 matches 0 run forceload add ~-1 ~-1 ~1 ~1
execute if score __slow_loop__ var0 matches 60 run fill ~-20 ~-14 ~-20 ~20 ~4 ~20 sculk_shrieker[can_summon=true] replace minecraft:sculk_shrieker[can_summon=false]