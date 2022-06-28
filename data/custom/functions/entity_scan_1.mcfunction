execute if entity @s[tag=!typed] run function custom:identify_mobs

execute if entity @s[tag=smudge_boss] run function custom:smudge_boss
execute if entity @s[type=area_effect_cloud] run function custom:area_effect_cloud_entity

execute if entity @s[tag=smudge_ice_ball_check] unless entity @e[tag=smudge_ice_ball,distance=..5,limit=1] at @e[type=area_effect_cloud,tag=!smudge_ice_ball_check,distance=..8,sort=nearest,limit=1] run function custom:smudge_ball_explode
execute if entity @s[tag=smudge_ice_ball] unless entity @e[tag=smudge_ice_ball_check,distance=..5] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["smudge_ice_ball_check"]}

scoreboard players add @s[tag=smudge_ice_ball] var0 1
kill @s[tag=smudge_ice_ball,scores={var0=130}]

execute if entity @s[type=arrow,nbt={Color:257}] positioned ^ ^ ^-.5 run kill @e[tag=e_arrow,distance=..7]
execute if entity @s[tag=e_arrow] run function custom:e_arrow
execute if entity @s[type=arrow,nbt={Color:257}] run summon area_effect_cloud ^ ^ ^ {Duration:2,Tags:["e_arrow"]}
kill @s[type=arrow,nbt={inGround:1b,Color:257}]

execute if entity @s[tag=turret] unless entity @e[type=magma_cube,distance=..5,nbt={Size:4}] run function custom:nether_turret_explode
execute if entity @s[type=blaze,tag=flame] run function custom:blaze

execute if entity @s[tag=dragon_check] unless entity @e[type=ender_dragon,limit=1] run setblock 0 68 0 dragon_egg
execute if entity @s[tag=dragon_check] if block 0 68 0 dragon_egg run kill @s
execute if entity @s[type=ender_dragon] run summon area_effect_cloud 0 0 0 {Duration:2,Tags:["dragon_check"]}

execute if entity @s[type=falling_block,tag=thrown] store result entity @s Motion[0] double 0.12 run data get entity @e[tag=blow,sort=random,limit=1] Pos[0]
execute if entity @s[type=falling_block,tag=thrown] store result entity @s Motion[2] double 0.12 run data get entity @e[tag=blow,sort=random,limit=1] Pos[2]
tag @s[type=falling_block,tag=thrown] remove thrown
execute if entity @s[type=arrow,tag=sculk_spread,nbt={inGround:1b}] unless block ~ ~-1 ~ #wither_immune run function custom:sculk_spread

data merge entity @s[type=trident,tag=!channeling,nbt={Trident:{id:"minecraft:trident",Count:1b,tag:{HideFlags:53}}}] {crit:1b,Tags:["channeling"]}
data merge entity @s[type=trident,tag=!channeling,nbt={Trident:{id:"minecraft:trident",Count:1b,tag:{HideFlags:61}}}] {crit:1b,Tags:["channeling","tri_nuke"]}
execute if entity @s[tag=channeling2] run kill @e[tag=channeling,distance=...5]
execute if entity @s[tag=channeling] run kill @e[tag=channeling2,distance=..5,limit=1]
execute if entity @s[tag=channeling2,tag=!tri_nuke_2] run summon lightning_bolt ~ ~ ~
execute if entity @s[tag=channeling2,tag=!tri_nuke_2] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["blast2","despawn","nocluster","channeled"]}
execute if entity @s[tag=tri_nuke_2] run function custom:projectile_explode
execute if entity @s[tag=channeling,tag=!tri_nuke] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["channeling2"]}
execute if entity @s[tag=tri_nuke] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["channeling2","tri_nuke_2","f_proj"]}
execute if entity @s[tag=channeling] as @e[tag=channeling2,sort=nearest,limit=1] run tp @s ^ ^ ^ ~ ~
kill @s[tag=channeling,nbt={inGround:1b}]

execute if entity @s[tag=break_box] run function custom:break_box

execute if entity @s[tag=cluster] run function custom:cluster_update
execute if entity @s[tag=blast2] run function custom:blast

execute if entity @s[tag=launch_blocks] run function custom:tornado_heavy
execute if entity @s[type=tnt] run function custom:tnt_entity
execute if entity @s[tag=tnt_check,scores={e_check=1..}] run function custom:large_explode
execute if entity @s[type=tnt,tag=!vanilla] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["tnt_check"]}

execute if entity @s[type=armor_stand] run function custom:armor_stand_entity

execute if entity @s[tag=e_shockwave] at @s run function custom:shockwave_main
execute if entity @s[tag=tnt_check] run tp @e[type=tnt,distance=..5,sort=nearest,limit=64] ~ ~ ~
execute if entity @s[tag=tnt_check] as @e[type=tnt,distance=..5,sort=nearest,limit=64] run data merge entity @s {Glowing:1b}
scoreboard players reset @s[tag=tnt_check] e_strength
execute if entity @s[type=tnt,tag=!vanilla] as @e[tag=tnt_check,sort=nearest,limit=1] run scoreboard players add @s e_strength 1
execute if entity @s[tag=tnt_check] run scoreboard players operation @s e_check = @s e_strength
execute if entity @s[tag=explosion_flash] run particle flash ~ ~ ~ 0 0 0 0 1 force

scoreboard players set @s[tag=player_id] player_id 0
execute if entity @s[tag=player_id] run function custom:player_id
kill @s[tag=player_id]
tag @s[tag=assigned] remove assigned

execute if entity @s[tag=summon] run function custom:tornado_start