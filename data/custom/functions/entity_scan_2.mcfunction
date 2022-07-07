kill @e[tag=random]
kill @e[tag=lightning]

tag @e[tag=immune] remove immune
execute as @e[tag=rotate] at @s run tp @s ~ ~ ~ ~16 ~

execute as @e[tag=despawn,tag=!no_destroy,nbt={inGround:1b}] at @s positioned ^ ^ ^.4 run function custom:break_blocks
kill @e[tag=despawn,nbt={inGround:1b}]
execute at @e[tag=blade_bullet,tag=level3] run kill @e[tag=blade3,distance=..4,sort=nearest,limit=5]
execute as @e[tag=blade3] at @s positioned ^ ^ ^.1 run function custom:blade3
execute as @e[tag=king] at @s unless entity @e[tag=blade3,distance=..4,limit=1] run data merge entity @s {DeathTime:19,Health:0}
execute at @e[tag=exp_spawn] run summon experience_orb ~ ~ ~ {Value:1}

execute as @e[tag=despawn] at @s run function custom:cs_bullet

execute at @e[type=tnt,tag=!vanilla] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["tnt_check"]}