execute if entity @s[scores={wither_id=32768..}] run tp @s ~ ~0.2 ~ ~36 0
execute if entity @s[scores={wither_id=..32767}] run tp @s ~ ~0.2 ~ ~-36 0
execute at @s[nbt={Invul:0}] run function custom:wither_boom