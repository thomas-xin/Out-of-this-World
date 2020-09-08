execute at @s[tag=d_proj] run kill @e[type=area_effect_cloud,distance=.3..9]
execute at @s[tag=f_proj] positioned ~ ~ ~ run function custom:tornado_heavy
execute at @s[tag=f_proj] positioned ~ ~-5 ~ run function custom:tornado_heavy
execute at @s[tag=f_proj] positioned ~-5 ~ ~ run function custom:tornado_heavy
execute at @s[tag=f_proj] positioned ~5 ~ ~ run function custom:tornado_heavy
execute at @s[tag=f_proj] positioned ~ ~ ~-5 run function custom:tornado_heavy
execute at @s[tag=f_proj] positioned ~ ~ ~5 run function custom:tornado_heavy
execute at @s[tag=f_proj] positioned ~-3.5 ~-3.5 ~ run function custom:tornado_heavy
execute at @s[tag=f_proj] positioned ~3.5 ~-3.5 ~ run function custom:tornado_heavy
execute at @s[tag=f_proj] positioned ~ ~-3.5 ~-3.5 run function custom:tornado_heavy
execute at @s[tag=f_proj] positioned ~ ~-3.5 ~3.5 run function custom:tornado_heavy
tag @s add break_obsidian
execute at @s[tag=f_proj] positioned ~-3 ~3 ~-3 run function custom:tiny_explode
execute at @s[tag=f_proj] positioned ~3 ~3 ~-3 run function custom:tiny_explode
execute at @s[tag=f_proj] positioned ~-3 ~3 ~3 run function custom:tiny_explode
execute at @s[tag=f_proj] positioned ~3 ~3 ~3 run function custom:tiny_explode
execute at @s[tag=f_proj] positioned ~-3 ~-3 ~-3 run function custom:tiny_explode
execute at @s[tag=f_proj] positioned ~3 ~-3 ~-3 run function custom:tiny_explode
execute at @s[tag=f_proj] positioned ~-3 ~-3 ~3 run function custom:tiny_explode
execute at @s[tag=f_proj] positioned ~3 ~-3 ~3 run function custom:tiny_explode
execute at @s run function custom:tiny_explode
execute at @s positioned ~ ~-2 ~ run effect give @e[distance=..32] wither 24 4
execute at @s[tag=d_proj] run summon area_effect_cloud ~ ~-1 ~ {Duration:30,Tags:["projectile_freeze"]}
execute at @s run setblock ~ ~ ~ packed_ice
execute at @s[tag=f_proj] run summon lightning_bolt ~ ~-3 ~
execute at @s[tag=f_proj] run summon armor_stand ~ ~ ~ {Invisible:1,Invulnerable:1,Tags:["shockwave_1"]}
execute at @s[tag=f_proj] positioned ~ ~-2 ~ run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["launch_blocks"]}
execute at @s[tag=f_proj] run playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 8 0.4
execute at @s[tag=f_proj] run playsound minecraft:item.trident.thunder hostile @a ~ ~ ~ 7 0.
execute at @s[tag=f_proj] run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 6 0.
execute at @s[tag=d_proj] run playsound minecraft:block.sea_lantern.break hostile @a ~ ~ ~ 32 0.7
execute at @s[tag=d_proj] run playsound minecraft:entity.splash_potion.break hostile @a ~ ~ ~ 7 0.5
execute at @s[tag=d_proj] run playsound minecraft:entity.dragon_fireball.explode hostile @a ~ ~ ~ 6 0.2
execute at @s[tag=!tri_nuke_2] run summon fireball ~ ~0.6 ~ {Glowing:3b,ExplosionPower:5,Motion:[0.,0.,0.],power:[0.,-.07,0.],Tags:["despawn"]}
execute at @s[tag=tri_nuke_2] run summon creeper ~ ~0.6 ~ {Invulnerable:1b,Fuse:0,powered:3b,ExplosionRadius:8,Tags:["despawn"]}
execute at @s[tag=d_proj] positioned ~ ~2 ~ run function custom:trident_1
execute at @s[tag=d_proj] positioned ~ ~2 ~ run function custom:trident_2
execute at @s[tag=d_proj] positioned ~ ~2 ~ run function custom:trident_3
execute at @s[tag=d_proj] positioned ~ ~2 ~ run function custom:trident_4
execute at @s[tag=d_proj] positioned ~ ~2 ~ run summon tnt ~ ~ ~ {Tags:["vanilla"]}
execute at @s[tag=d_proj] positioned ~ ~2 ~ as @e[type=trident,tag=cluster,distance=..1] run data merge entity @s {Trident:{id:"minecraft:nether_star",Count:3b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:40s}]}},Glowing:3b,Tags:["despawn","ultrablast","cluster"]}
execute at @s at @e[type=ender_dragon,distance=..6] run summon creeper ^ ^ ^0.5 {powered:3b,Fuse:0,ExplosionRadius:4}
kill @s