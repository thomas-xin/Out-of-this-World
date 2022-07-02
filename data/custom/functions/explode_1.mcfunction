function custom:break_frame_1
function custom:break_frame_2
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 glass keep
fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace water
fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace lava
kill @e[tag=basic,tag=!instakill_immune,distance=..7]
scoreboard players add @e[tag=basic,distance=..16] damaged 16
summon area_effect_cloud ~ ~ ~ {Duration:10,Tags:["explosion_flash"]}
summon creeper ~ ~ ~ {ExplosionRadius:8,Fuse:0,Invulnerable:1,ignited:1}
summon creeper ~ ~ ~ {ExplosionRadius:10,Fuse:0,Invulnerable:1,ignited:1}
execute as @s[scores={e_strength=1}] run summon armor_stand ~ ~ ~ {Invisible:1,Invulnerable:1,Tags:["shockwave_1"]}
execute positioned ~ ~-2 ~ run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
#tell @a Level 1 TNT detonated!