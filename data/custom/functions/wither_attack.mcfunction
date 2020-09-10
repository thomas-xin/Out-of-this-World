execute at @s run effect give @a[tag=found,distance=..255] mining_fatigue 1

execute at @s run function custom:wither_orbit
execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["wither_rando","w0"]}
execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["wither_rando","w1"]}

execute at @s[nbt={OnGround:1b}] as @e[tag=wither_rando,distance=..1,sort=random,limit=1] if entity @s[tag=w1] as @e[tag=wither_rando,distance=..1,sort=random,limit=1] if entity @s[tag=w1] as @e[tag=wither_rando,distance=..1,sort=random,limit=1] if entity @s[tag=w0] as @e[tag=wither_rando,distance=..1,sort=random,limit=1] if entity @s[tag=w0] as @e[tag=wither_rando,distance=..1,sort=random,limit=1] if entity @s[tag=w1] as @e[tag=wither_main,sort=nearest,limit=1] run data merge entity @s {ActiveEffects:[{Id:6b,Amplifier:1b,Duration:4},{Id:7b,Amplifier:0b,Duration:2},{Id:11b,Amplifier:2b,Duration:9999999},{Id:14b,Amplifier:0b,Duration:9999999}]}

execute at @s as @e[tag=wither_rando,distance=..1,sort=random,limit=1] if entity @s[tag=w1] as @e[tag=wither_rando,distance=..1,sort=random,limit=1] if entity @s[tag=w1] as @e[tag=wither_rando,distance=..1,sort=random,limit=1] if entity @s[tag=w1] as @e[tag=wither_rando,distance=..1,sort=random,limit=1] if entity @s[tag=w1] as @e[tag=wither_rando,distance=..1,sort=random,limit=1] if entity @s[tag=w1] if entity @s[tag=w1] unless entity @e[tag=summontimer,distance=..20,limit=1] unless entity @e[tag=glowtimer,distance=..20,limit=1] run playsound minecraft:entity.wither.ambient neutral @a ~ ~ ~ 2.5 0.75

tag @s add src_id

execute at @s as @e[tag=wither_rando,distance=..1,sort=random,limit=1] if entity @s[tag=w1] as @e[tag=wither_rando,distance=..1,sort=random,limit=1] if entity @s[tag=w1] as @e[tag=wither_rando,distance=..1,sort=random,limit=1] if entity @s[tag=w1] as @e[tag=wither_rando,distance=..1,sort=random,limit=1] if entity @s[tag=w1] as @e[tag=wither_rando,distance=..1,sort=random,limit=1] if entity @s[tag=w1] as @e[tag=wither_rando,distance=..1,sort=random,limit=1] if entity @s[tag=w1] as @e[tag=wither_rando,distance=..1,sort=random,limit=1] if entity @s[tag=w1] unless entity @e[tag=summontimer,distance=..32,limit=1] positioned ~ ~8.1 ~ unless entity @e[tag=fireball,distance=..2,limit=1] run summon area_effect_cloud ~ ~ ~ {Duration:240,Tags:["fireball","attack","launch","set_id"]}

execute at @e[tag=attack] run summon armor_stand ~ ~ ~ {Health:1,Small:1b,Invisible:1b,Tags:["timercheck","launch","set_id"],Passengers:[{id:end_crystal,ShowBottom:0b,Tags:["perma_crystal","showcrystal","point_crystal","set_id"]},{id:end_crystal,ShowBottom:0b,Tags:["glow_crystal","perma_crystal","showcrystal","set_id"]}]}
execute at @e[tag=attack] run summon area_effect_cloud ~ ~ ~ {Duration:160,Tags:["glowtimer","launch","set_id"]}

execute as @e[tag=set_id,sort=nearest,limit=4] run execute store result score @s wither_id run scoreboard players get @e[tag=src_id,limit=1] wither_id

tag @s remove src_id
tag @e[tag=set_id] remove set_id