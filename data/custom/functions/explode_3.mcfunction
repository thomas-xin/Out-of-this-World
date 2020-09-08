fill ~-2.5 ~-2.5 ~-2.5 ~2.5 ~2.5 ~2.5 glass replace obsidian
fill ~-2.5 ~-2.5 ~-2.5 ~2.5 ~2.5 ~2.5 glass keep
fill ~-7 ~-7 ~-7 ~7 ~7 ~7 air replace water
fill ~-7 ~-7 ~-7 ~7 ~7 ~7 air replace lava
kill @e[tag=basic,distance=..12]
kill @e[tag=undead,type=!wither,distance=..12]
effect give @e[tag=basic,distance=..27] instant_damage 3 3
effect give @e[tag=undead,distance=..27] instant_health 3 3
execute as @e[type=wither,distance=..27] run data merge entity @s {ActiveEffects:[{Id:6,Amplifier:3,Duration:5}]}
execute at @e[type=ender_dragon,distance=..27] run summon creeper ~ ~ ~ {Fuse:0,Invulnerable:1,ExplosionRadius:4,powered:1}
summon area_effect_cloud ~-1 ~ ~ {Duration:50,Tags:["explosion_flash"]}
summon area_effect_cloud ~ ~ ~-1 {Duration:50,Tags:["explosion_flash"]}
summon area_effect_cloud ~1 ~ ~ {Duration:50,Tags:["explosion_flash"]}
summon area_effect_cloud ~ ~ ~1 {Duration:50,Tags:["explosion_flash"]}
summon fireball ~ ~-4 ~ {ExplosionPower:12,direction:[0.,-.5,0.],power:[0.,-.5,0.]}
summon creeper ~4 ~ ~ {ExplosionRadius:14,Fuse:0,Invulnerable:1,ignited:1}
summon creeper ~-4 ~ ~ {ExplosionRadius:14,Fuse:0,Invulnerable:1,ignited:1}
summon creeper ~ ~ ~4 {ExplosionRadius:14,Fuse:0,Invulnerable:1,ignited:1}
summon creeper ~ ~ ~-4 {ExplosionRadius:14,Fuse:0,Invulnerable:1,ignited:1}
execute as @s[scores={e_strength=4..7}] run summon armor_stand ~ ~-2 ~ {Invisible:1,Invulnerable:1,Tags:["shockwave_3"]}
execute positioned ~ ~-3 ~ run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
execute positioned ~3 ~-3 ~ run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
execute positioned ~-3 ~-3 ~ run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
execute positioned ~ ~-3 ~3 run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
execute positioned ~ ~-3 ~-3 run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
#tell @a Level 4 TNT detonated!