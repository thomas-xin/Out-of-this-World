execute as @s[scores={wither_id=32768..}] at @s run tp @s ~ ~0.2 ~ ~36 0
execute as @s[scores={wither_id=..32767}] at @s run tp @s ~ ~0.2 ~ ~-36 0
tag @e[tag=wither_target,distance=..27.31] add dead
execute as @s[nbt={Invul:0}] at @s run function custom:wither_boom