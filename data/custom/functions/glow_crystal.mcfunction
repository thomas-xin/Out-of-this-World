execute unless entity @e[tag=glowtimer,distance=..32,limit=1] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["randomX","r1"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:2,Tags:["randomX","r2"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:2,Tags:["randomX","r1"]}]}]}
execute unless entity @e[tag=glowtimer,distance=..32,limit=1] run playsound minecraft:item.trident.return neutral @a ~ ~ ~ 6 0.
execute unless entity @e[tag=glowtimer,distance=..32,limit=1] run playsound minecraft:entity.illusioner.prepare_blindness neutral @a ~ ~ ~ 6 0.5
tag @e[tag=randomX,sort=random,limit=1] add selected

execute at @e[tag=selected,tag=r1,limit=1] as @e[tag=glow_crystal,sort=nearest,limit=1] run data merge entity @s {Glowing:1b,Tags:["perma_crystal","showcrystal","s1","set_id"]}
execute at @e[tag=selected,tag=r2,limit=1] as @e[tag=glow_crystal,sort=nearest,limit=1] run data merge entity @s {Glowing:1b,Tags:["perma_crystal","showcrystal","s2","set_id"]}
execute store result score @e[tag=set_id] wither_id run data get entity @s wither_id
tag @e[tag=set_id] remove set_id
kill @e[tag=randomX]

execute if entity @e[tag=glowtimer,distance=..32,limit=1] run particle explosion ~ ~1.5 ~ .4 .4 .4 0 7 force
execute if entity @e[tag=glowtimer,distance=..32,limit=1] run playsound minecraft:entity.ghast.shoot neutral @a ~ ~ ~ 2.1 0.2