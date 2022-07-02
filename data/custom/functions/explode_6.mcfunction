function custom:break_frame_1
function custom:break_frame_2
function custom:break_frame_3
fill ~-4 ~-4 ~-4 ~4 ~4 ~4 glass replace obsidian
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 glass keep
fill ~-8 ~-8 ~-8 ~8 ~8 ~8 air replace water
fill ~-8 ~-8 ~-8 ~8 ~8 ~8 air replace lava
kill @e[tag=basic,tag=!instakill_immune,distance=..24]
scoreboard players add @e[tag=basic,distance=..52] damaged 56
summon area_effect_cloud ~-5 ~ ~ {Duration:144,Tags:["explosion_flash"]}
summon area_effect_cloud ~ ~ ~-5 {Duration:144,Tags:["explosion_flash"]}
summon area_effect_cloud ~5 ~ ~ {Duration:144,Tags:["explosion_flash"]}
summon area_effect_cloud ~ ~ ~5 {Duration:144,Tags:["explosion_flash"]}
summon area_effect_cloud ~ ~5 ~ {Duration:144,Tags:["explosion_flash"]}
summon area_effect_cloud ~ ~-5 ~ {Duration:144,Tags:["explosion_flash"]}
summon area_effect_cloud ~ ~ ~ {Duration:144,Tags:["explosion_flash"]}
summon fireball ~ ~ ~ {ExplosionPower:255,direction:[0.,-.5,0.],power:[0.,-.5,0.]}
summon creeper ~ ~ ~ {ExplosionRadius:48,Fuse:0,Invulnerable:1,ignited:1}
summon creeper ~ ~-12 ~ {ExplosionRadius:12,Fuse:0,Invulnerable:1,ignited:1,powered:1}
summon creeper ~ ~12 ~ {ExplosionRadius:12,Fuse:0,Invulnerable:1,ignited:1,powered:1}
summon creeper ~12 ~ ~ {ExplosionRadius:12,Fuse:0,Invulnerable:1,ignited:1,powered:1}
summon creeper ~-12 ~ ~ {ExplosionRadius:12,Fuse:0,Invulnerable:1,ignited:1,powered:1}
summon creeper ~ ~ ~12 {ExplosionRadius:12,Fuse:0,Invulnerable:1,ignited:1,powered:1}
summon creeper ~ ~ ~-12 {ExplosionRadius:12,Fuse:0,Invulnerable:1,ignited:1,powered:1}
execute as @s[scores={e_strength=32..}] run summon armor_stand ~ ~-8 ~ {Invisible:1,Invulnerable:1,Tags:["shockwave_6"]}
execute positioned ~ ~-5 ~ run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
execute positioned ~7 ~-5 ~ run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
execute positioned ~-7 ~-5 ~ run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
execute positioned ~ ~-7 ~5 run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
execute positioned ~ ~-7 ~-5 run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
#tell @a Level 32 TNT detonated!