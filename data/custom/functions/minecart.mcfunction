execute if block ~ ~ ~ powered_rail if block ~ ~-1 ~ beacon run tag @s add fast4
execute if block ~ ~ ~ powered_rail if block ~ ~-1 ~ emerald_block run tag @s add fast3
execute if block ~ ~ ~ powered_rail if block ~ ~-1 ~ redstone_block run tag @s add fast2
execute if block ~ ~ ~ powered_rail if block ~ ~-1 ~ diamond_block run tag @s add fast2
execute if block ~ ~ ~ powered_rail if block ~ ~-1 ~ iron_block run tag @s add fast1
execute if block ~ ~ ~ powered_rail if block ~ ~-1 ~ gold_block run tag @s add fast1
execute if block ~ ~ ~ powered_rail if block ~ ~-1 ~ ice run tag @s add fast1
execute if block ~ ~ ~ powered_rail if block ~ ~-1 ~ frosted_ice run tag @s add fast1
execute if block ~ ~ ~ powered_rail if block ~ ~-1 ~ packed_ice run tag @s add fast1
execute if block ~ ~ ~ powered_rail if block ~ ~-1 ~ blue_ice run tag @s add fast1
execute if block ~ ~ ~ powered_rail if block ~ ~-1 ~ slime_block run tag @s add fast0
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["dir"]}
tp @e[tag=dir,sort=nearest,limit=1] ~ ~ ~ facing entity @e[tag=accel,sort=nearest,limit=1]
execute if block ~ ~ ~ air as @e[tag=dir,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~ -15
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["loc"]}
execute if entity @s[tag=fast0] at @e[tag=dir,sort=nearest,limit=1] if entity @e[tag=accel,distance=.1...69] run playsound minecraft:block.slime_block.break block @a ~ ~ ~ 0.1 2
execute if entity @s[tag=fast0] at @e[tag=dir,sort=nearest,limit=1] if entity @e[tag=accel,distance=.1...69] run tp @s ^ ^ ^0.2
execute if entity @s[tag=fast1] at @e[tag=dir,sort=nearest,limit=1] if entity @e[tag=accel,distance=.2...69] run playsound minecraft:block.dispenser.dispense block @a ~ ~ ~ 0.1 0.4
execute if entity @s[tag=fast1] at @e[tag=dir,sort=nearest,limit=1] if entity @e[tag=accel,distance=.2...69] run tp @s ^ ^ ^-0.2
execute if entity @s[tag=fast2] at @e[tag=dir,sort=nearest,limit=1] if entity @e[tag=accel,distance=.3..1.19] run playsound minecraft:block.dispenser.dispense block @a ~ ~ ~ 0.4 0.3
execute if entity @s[tag=fast2] at @e[tag=dir,sort=nearest,limit=1] if entity @e[tag=accel,distance=.3..1.19] run tp @s ^ ^ ^-0.9
execute if entity @s[tag=fast3] at @e[tag=dir,sort=nearest,limit=1] if entity @e[tag=accel,distance=.3..1.99] run playsound minecraft:block.dispenser.dispense block @a ~ ~ ~ 0.9 0.2
execute if entity @s[tag=fast3] at @e[tag=dir,sort=nearest,limit=1] if entity @e[tag=accel,distance=.3..1.99] run tp @s ^ ^ ^-1.5
execute if entity @s[tag=fast4] at @e[tag=dir,sort=nearest,limit=1] if entity @e[tag=accel,distance=.3..2.99] run playsound minecraft:block.dispenser.dispense block @a ~ ~ ~ 1.5 0
execute if entity @s[tag=fast4] at @e[tag=dir,sort=nearest,limit=1] if entity @e[tag=accel,distance=.3..2.99] run tp @s ^ ^ ^-2.8
kill @e[tag=accel,sort=nearest,limit=1]
kill @e[tag=dir,sort=nearest,limit=1]