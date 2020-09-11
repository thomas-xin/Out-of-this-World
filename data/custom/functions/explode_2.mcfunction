function custom:break_frame_1
function custom:break_frame_2
function custom:break_frame_3
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 glass keep
fill ~-6 ~-6 ~-6 ~6 ~6 ~6 air replace water
fill ~-6 ~-6 ~-6 ~6 ~6 ~6 air replace lava
kill @e[tag=basic,distance=..10]
kill @e[tag=undead,type=!wither,distance=..10]
effect give @e[tag=basic,distance=..20] instant_damage 3 3
effect give @e[tag=undead,distance=..20] instant_health 3 3
execute as @e[type=wither,distance=..20] run data merge entity @s {ActiveEffects:[{Id:6,Amplifier:3,Duration:5}]}
execute at @e[type=ender_dragon,distance=..20] run summon creeper ~ ~ ~ {Fuse:0,Invulnerable:1,ExplosionRadius:4,powered:1}
summon area_effect_cloud ~ ~ ~ {Duration:25,Tags:["explosion_flash"]}
summon area_effect_cloud ~ ~ ~ {Duration:25,Tags:["explosion_flash"]}
summon creeper ~3 ~ ~ {ExplosionRadius:10,Fuse:0,Invulnerable:1,ignited:1}
summon creeper ~-3 ~ ~ {ExplosionRadius:10,Fuse:0,Invulnerable:1,ignited:1}
summon creeper ~ ~ ~3 {ExplosionRadius:10,Fuse:0,Invulnerable:1,ignited:1}
summon creeper ~ ~ ~-3 {ExplosionRadius:10,Fuse:0,Invulnerable:1,ignited:1}
execute as @s[scores={e_strength=2..3}] run summon armor_stand ~ ~ ~ {Invisible:1,Invulnerable:1,Tags:["shockwave_2"]}
execute positioned ~ ~-2 ~ run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
execute positioned ~2 ~-2 ~ run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
execute positioned ~-2 ~-2 ~ run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
execute positioned ~ ~-2 ~2 run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
execute positioned ~ ~-2 ~-2 run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
#tell @a Level 2 TNT detonated!