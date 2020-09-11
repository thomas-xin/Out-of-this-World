function custom:break_frame_1
function custom:break_frame_2
function custom:break_frame_3
fill ~-3.5 ~-3.5 ~-3.5 ~3.5 ~3.5 ~3.5 glass replace obsidian
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 glass keep
fill ~-8 ~-8 ~-8 ~8 ~8 ~8 air replace water
fill ~-8 ~-8 ~-8 ~8 ~8 ~8 air replace lava
kill @e[tag=basic,distance=..20]
kill @e[tag=undead,distance=..20]
effect give @e[tag=basic,distance=..40] instant_damage 5 5
effect give @e[tag=undead,distance=..40] instant_health 5 5
execute as @e[type=wither,distance=..40] run data merge entity @s {ActiveEffects:[{Id:6,Amplifier:5,Duration:5}]}
execute at @e[type=ender_dragon,distance=..40] run summon creeper ~ ~ ~ {Fuse:0,Invulnerable:1,ExplosionRadius:6,powered:1}
summon area_effect_cloud ~-4 ~ ~ {Duration:100,Tags:["explosion_flash"]}
summon area_effect_cloud ~ ~ ~-4 {Duration:100,Tags:["explosion_flash"]}
summon area_effect_cloud ~4 ~ ~ {Duration:100,Tags:["explosion_flash"]}
summon area_effect_cloud ~ ~ ~4 {Duration:100,Tags:["explosion_flash"]}
summon area_effect_cloud ~ ~4 ~ {Duration:100,Tags:["explosion_flash"]}
summon area_effect_cloud ~ ~-4 ~ {Duration:100,Tags:["explosion_flash"]}
summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["explosion_flash"]}
summon fireball ~ ~-5 ~ {ExplosionPower:64,direction:[0.,-.5,0.],power:[0.,-.5,0.]}
summon creeper ~ ~8 ~ {ExplosionRadius:19,Fuse:0,Invulnerable:1,ignited:1}
summon creeper ~ ~-8 ~ {ExplosionRadius:19,Fuse:0,Invulnerable:1,ignited:1}
summon creeper ~8 ~ ~ {ExplosionRadius:19,Fuse:0,Invulnerable:1,ignited:1}
summon creeper ~-8 ~ ~ {ExplosionRadius:19,Fuse:0,Invulnerable:1,ignited:1}
summon creeper ~ ~ ~8 {ExplosionRadius:19,Fuse:0,Invulnerable:1,ignited:1}
summon creeper ~ ~ ~-8 {ExplosionRadius:19,Fuse:0,Invulnerable:1,ignited:1}
execute as @s[scores={e_strength=16..31}] run summon armor_stand ~ ~-4 ~ {Invisible:1,Invulnerable:1,Tags:["shockwave_5"]}
execute positioned ~ ~-5 ~ run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
execute positioned ~6 ~-5 ~ run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
execute positioned ~-6 ~-5 ~ run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
execute positioned ~ ~-6 ~5 run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
execute positioned ~ ~-6 ~-5 run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
#tell @a Level 16 TNT detonated!