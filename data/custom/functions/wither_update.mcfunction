execute positioned ~ ~3 ~ as @e[type=wither_skull,distance=..4] unless entity @s[nbt={Silent:1b}] run playsound minecraft:entity.wither.shoot neutral @a ~ ~ ~ 3 0.75
execute positioned ~ ~3 ~ as @e[type=wither_skull,distance=..4] unless entity @s[nbt={Silent:1b}] run data merge entity @s {Silent:1b,Tags:["supercharged"],Glowing:1b}
execute if entity @s[y=-64,dy=64] run tp @s ^ ^.1 ^.3
execute unless block ~ ~-2.5 ~ air run tp @s ^ ^0.2116 ^0.1125
forceload add ~-49 ~-49 ~49 ~49