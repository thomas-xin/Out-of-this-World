execute as @e[tag=fireball,sort=nearest,limit=1] run data merge entity @s {Tags:["launch"]}
playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 6 0.8
execute as @e[tag=wither_main,sort=nearest,distance=..10,limit=1] run data merge entity @s {ActiveEffects:[{Id:6b,Amplifier:4b,Duration:4},{Id:7b,Amplifier:0b,Duration:2},{Id:11b,Amplifier:2b,Duration:9999999},{Id:14b,Amplifier:0b,Duration:9999999}]}
summon lightning_bolt ~ ~-6 ~
kill @s