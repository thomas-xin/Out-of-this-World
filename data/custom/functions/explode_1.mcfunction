fill ~-1 ~-1 ~-1 ~1 ~1 ~1 glass replace obsidian
fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace water
fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace lava
kill @e[tag=basic,distance=..7]
kill @e[tag=undead,type=!wither,distance=..7]
effect give @e[tag=basic,distance=..16] instant_damage 3 3
effect give @e[tag=undead,distance=..16] instant_health 3 3
execute as @e[type=wither,distance=..16] run data merge entity @s {ActiveEffects:[{Id:6,Amplifier:3,Duration:5}]}
execute at @e[type=ender_dragon,distance=..16] run summon creeper ~ ~ ~ {Fuse:0,Invulnerable:1,ExplosionRadius:4,powered:1}
summon area_effect_cloud ~ ~ ~ {Duration:10,Tags:["explosion_flash"]}
summon creeper ~ ~ ~ {ExplosionRadius:8,Fuse:0,Invulnerable:1,ignited:1}
summon creeper ~ ~ ~ {ExplosionRadius:10,Fuse:0,Invulnerable:1,ignited:1}
execute as @s[scores={e_strength=1}] run summon armor_stand ~ ~ ~ {Invisible:1,Invulnerable:1,Tags:["shockwave_1"]}
execute positioned ~ ~-2 ~ run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
#tell @a Level 1 TNT detonated!