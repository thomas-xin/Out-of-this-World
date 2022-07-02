function custom:break_frame_1
function custom:break_frame_2
function custom:break_frame_3
fill ~-3.5 ~-3.5 ~-3.5 ~3.5 ~3.5 ~3.5 glass replace obsidian
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 glass keep
fill ~-8 ~-8 ~-8 ~8 ~8 ~8 air replace water
fill ~-8 ~-8 ~-8 ~8 ~8 ~8 air replace lava
kill @e[tag=basic,tag=!instakill_immune,distance=..20]
scoreboard players add @e[tag=basic,distance=..40] damaged 48
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