fill ~-3 ~-1 ~-3 ~3 ~3 ~3 air replace water
fill ~-3 ~-1 ~-3 ~3 ~3 ~3 air replace lava
setblock ~ ~-1 ~ sculk_catalyst
kill @e[type=fireball,distance=..2.5,nbt=!{Glowing:1b}]
kill @e[type=wither_skull,distance=..2.5,nbt=!{Glowing:1b}]
summon blaze ~ ~ ~ {Silent:1b,NoAI:1b,Tags:["kill"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:888}]}
summon blaze ~1 ~ ~1 {Silent:1b,NoAI:1b,Tags:["kill"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:888}]}
summon blaze ~1 ~ ~-1 {Silent:1b,NoAI:1b,Tags:["kill"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:888}]}
summon blaze ~-1 ~ ~-1 {Silent:1b,NoAI:1b,Tags:["kill"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:888}]}
summon blaze ~-1 ~ ~1 {Silent:1b,NoAI:1b,Tags:["kill"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:888}]}
kill @e[type=blaze,tag=kill,limit=5]
kill @s