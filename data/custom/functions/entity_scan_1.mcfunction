execute as @e[type=!item,tag=!typed] run function custom:identify_mobs

execute as @e[tag=smudge_boss] at @s run function custom:smudge_boss
execute as @e[type=area_effect_cloud] at @s run function custom:area_effect_cloud_entity

execute as @e[tag=smudge_ice_ball_check] at @s unless entity @e[tag=smudge_ice_ball,distance=..5,limit=1] at @e[type=area_effect_cloud,tag=!smudge_ice_ball_check,distance=..8,sort=nearest,limit=1] run function custom:smudge_ball_explode
execute at @e[tag=smudge_ice_ball] unless entity @e[tag=smudge_ice_ball_check,distance=..5] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["smudge_ice_ball_check"]}

scoreboard players add @e[tag=smudge_ice_ball] var0 1
kill @e[tag=smudge_ice_ball,scores={var0=130}]

execute at @e[type=arrow,nbt={Color:257}] positioned ^ ^ ^-.5 run kill @e[tag=e_arrow,distance=..7]
execute as @e[tag=e_arrow] at @s run function custom:e_arrow
execute at @e[type=arrow,nbt={Color:257}] run summon area_effect_cloud ^ ^ ^ {Duration:2,Tags:["e_arrow"]}
kill @e[type=arrow,nbt={inGround:1b,Color:257}]

execute as @e[tag=turret] at @s unless entity @e[type=magma_cube,distance=..5,nbt={Size:4}] run function custom:nether_turret_explode
execute as @e[type=blaze,tag=flame] at @s run function custom:blaze

execute in the_end at @e[tag=dragon_check] unless entity @e[type=ender_dragon,limit=1] run setblock 0 68 0 dragon_egg
execute in the_end as @e[tag=dragon_check] if block 0 68 0 dragon_egg run kill @s
execute in the_end at @e[type=ender_dragon] run summon area_effect_cloud 0 0 0 {Duration:2,Tags:["dragon_check"]}

execute as @e[type=falling_block,tag=thrown] store result entity @s Motion[0] double 0.12 run data get entity @e[tag=blow,sort=random,limit=1] Pos[0]
execute as @e[type=falling_block,tag=thrown] store result entity @s Motion[2] double 0.12 run data get entity @e[tag=blow,sort=random,limit=1] Pos[2]
tag @e[type=falling_block,tag=thrown] remove thrown
execute as @e[type=arrow,tag=sculk_spread,nbt={inGround:1b}] at @s unless block ~ ~-1 ~ #wither_immune run function custom:sculk_spread

execute as @e[tag=break_box] at @s run function custom:break_box

execute as @e[tag=cluster] at @s run function custom:cluster_update
execute as @e[tag=blast2] at @s run function custom:blast

execute as @e[tag=launch_blocks] at @s run function custom:tornado_heavy
execute as @e[type=tnt] at @s run function custom:tnt_entity

execute as @e[type=armor_stand] at @s run function custom:armor_stand_entity

execute at @e[tag=tnt_check] run tp @e[type=tnt,nbt=!{Glowing:1b},distance=.1..5,sort=nearest,limit=64] ~ ~ ~
execute at @e[tag=tnt_check] as @e[type=tnt,nbt=!{Glowing:1b},distance=..5,sort=nearest,limit=64] run data merge entity @s {Glowing:1b}
execute at @e[tag=explosion_flash] run particle flash ~ ~ ~ 0 0 0 0 1 force

scoreboard players set @e[tag=player_id] player_id 0
execute as @a[tag=player_id] at @s run function custom:player_id
kill @e[tag=player_id]
tag @e[tag=assigned] remove assigned

execute as @s[tag=summon] at @s run function custom:tornado_start