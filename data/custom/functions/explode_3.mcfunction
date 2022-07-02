function custom:break_frame_1
function custom:break_frame_2
function custom:break_frame_3
fill ~-2.5 ~-2.5 ~-2.5 ~2.5 ~2.5 ~2.5 glass replace obsidian
fill ~-2.5 ~-2.5 ~-2.5 ~2.5 ~2.5 ~2.5 glass keep
fill ~-7 ~-7 ~-7 ~7 ~7 ~7 air replace water
fill ~-7 ~-7 ~-7 ~7 ~7 ~7 air replace lava
kill @e[tag=basic,tag=!instakill_immune,distance=..12]
scoreboard players add @e[tag=basic,distance=..27] damaged 32
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