fill ~-3 ~-3 ~-3 ~3 ~3 ~3 glass replace obsidian
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 glass keep
fill ~-7 ~-7 ~-7 ~7 ~7 ~7 air replace water
fill ~-7 ~-7 ~-7 ~7 ~7 ~7 air replace lava
kill @e[tag=basic,distance=..16]
kill @e[tag=undead,distance=..16]
effect give @e[tag=basic,distance=..30] instant_damage 4 4
effect give @e[tag=undead,distance=..30] instant_health 4 4
execute as @e[type=wither,distance=..30] run data merge entity @s {ActiveEffects:[{Id:6,Amplifier:4,Duration:5}]}
execute at @e[type=ender_dragon,distance=..30] run summon creeper ~ ~ ~ {Fuse:0,Invulnerable:1,ExplosionRadius:5,powered:1}
summon area_effect_cloud ~-3 ~ ~ {Duration:70,Tags:["explosion_flash"]}
summon area_effect_cloud ~ ~ ~-3 {Duration:70,Tags:["explosion_flash"]}
summon area_effect_cloud ~3 ~ ~ {Duration:70,Tags:["explosion_flash"]}
summon area_effect_cloud ~ ~ ~3 {Duration:70,Tags:["explosion_flash"]}
summon fireball ~ ~-4 ~ {ExplosionPower:21,direction:[0.,-.5,0.],power:[0.,-.5,0.]}
summon creeper ~6 ~ ~ {ExplosionRadius:16,Fuse:0,Invulnerable:1,ignited:1}
summon creeper ~-6 ~ ~ {ExplosionRadius:16,Fuse:0,Invulnerable:1,ignited:1}
summon creeper ~ ~ ~6 {ExplosionRadius:16,Fuse:0,Invulnerable:1,ignited:1}
summon creeper ~ ~ ~-6 {ExplosionRadius:16,Fuse:0,Invulnerable:1,ignited:1}
execute as @s[scores={e_strength=8..15}] run summon armor_stand ~ ~-4 ~ {Invisible:1,Invulnerable:1,Tags:["shockwave_4"]}
execute positioned ~ ~-5 ~ run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
execute positioned ~5 ~-5 ~ run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
execute positioned ~-5 ~-5 ~ run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
execute positioned ~ ~-5 ~5 run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
execute positioned ~ ~-5 ~-5 run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
#tell @a Level 8 TNT detonated!