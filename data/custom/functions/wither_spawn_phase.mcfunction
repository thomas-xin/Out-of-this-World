execute if entity @s[scores={wither_id=32768..}] run tp @s ~ ~0.05 ~ ~-16 0
execute if entity @s[scores={wither_id=..32767}] run tp @s ~ ~0.05 ~ ~16 0
playsound minecraft:block.conduit.ambient hostile @a ~ ~ ~ 1.5 0.75
execute if entity @s[nbt={Invul:0}] run function custom:wither_release
execute if entity @s[nbt={Invul:4}] run summon tnt ~ ~ ~ {Fuse:2,Passengers:[{id:"minecraft:tnt",Fuse:2}]}