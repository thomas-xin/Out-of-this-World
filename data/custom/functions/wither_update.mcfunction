execute positioned ~ ~3 ~ as @e[type=wither_skull,nbt=!{Silent:1b},distance=..4,limit=1] run playsound minecraft:entity.wither.shoot neutral @a ~ ~ ~ 3 0.75
execute positioned ~ ~3 ~ as @e[type=wither_skull,nbt=!{Silent:1b},distance=..4] run data merge entity @s {Silent:1b,Tags:["supercharged"],Glowing:1b}
execute if entity @s[y=-127,dy=64] run tp @s ^ ^0.1 ^0.3
execute if entity @s[y=0,dy=99] unless block ~ ~-3.5 ~ #custom:fragile unless block ~ ~-3.5 ~ air run tp @s ^ ^0.2116 ^0.0625

execute if score __slow_loop__ var0 matches 0 run forceload add ~-1 ~-1 ~1 ~1
execute if score __slow_loop__ var0 matches 60 run fill ~-20 ~-14 ~-20 ~20 ~4 ~20 sculk_shrieker[can_summon=true] replace minecraft:sculk_shrieker[can_summon=false]