function custom:break_frame_1
function custom:break_frame_2
function custom:break_frame_3
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 glass keep
fill ~-6 ~-6 ~-6 ~6 ~6 ~6 air replace water
fill ~-6 ~-6 ~-6 ~6 ~6 ~6 air replace lava
kill @e[tag=basic,tag=!instakill_immune,distance=..10]
scoreboard players add @e[tag=basic,distance=..20] damaged 24
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