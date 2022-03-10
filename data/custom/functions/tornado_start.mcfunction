execute if entity @s[tag=summon] at @p run tp @s ^ ^-2 ^16 ~ 0
execute if entity @s[tag=summon] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["t1","timed"],Passengers:[{id:area_effect_cloud,Tags:["timed"],Particle:"large_smoke",Radius:1.6f,Duration:614,Effects:[{Id:9b,Amplifier:0b,Duration:20},{Id:25b,Amplifier:9b,Duration:10}]}]}
execute if entity @s[tag=summon] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["t2","timed"],Passengers:[{id:area_effect_cloud,Tags:["timed"],Particle:"squid_ink",Radius:1.6f,Duration:614,Effects:[{Id:9b,Amplifier:0b,Duration:20},{Id:25b,Amplifier:9b,Duration:10}]}]}
execute if entity @s[tag=summon] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["t3","timed"],Passengers:[{id:area_effect_cloud,Tags:["timed"],Particle:"poof",Radius:1.6f,Duration:614,Effects:[{Id:9b,Amplifier:0b,Duration:20},{Id:25b,Amplifier:9b,Duration:10}]}]}
tag @s[tag=summon] remove summon

execute if entity @s[tag=block_launcher] as @e[type=falling_block,tag=!thrown,tag=!nothrown,distance=..64] run tag @s add thrown
tag @s[type=falling_block,tag=!thrown,tag=!nothrown] add nothrown
execute if entity @s[type=falling_block] run function custom:falling_block_entity